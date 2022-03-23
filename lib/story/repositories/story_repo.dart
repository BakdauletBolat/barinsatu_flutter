import 'dart:developer';

import 'package:barinsatu/story/models/story.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StoryRepo {
  String url = 'http://barinsatu.kz/api/stories/';
  // String url = 'http://www.barinsatu.kz/web-api/stories/';

  final dio = Dio();

  Future<List<Story>> getStories({int? authorId}) async {
    String authorStr = authorId != null ? '&author=' + authorId.toString() : '';

    Uri uri = Uri.parse(url + '?ordering=-id' + authorStr);
    try {
      var response = await http.get(uri);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<Story> ads =
          jsonRes.map<Story>((json) => Story.fromJson(json)).toList();
      return ads;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  deleteStory(int? authorId) async {
    Uri uri = Uri.parse(url + 'archive/' + authorId.toString() + '/');
    try {
      var response = await http.get(uri);
      print(response.body);
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<Story> createStory(FormData formData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();
    var response = await dio.post(url + 'create/',
        data: formData,
        options: Options(
            headers: {'Authorization': 'Bearer ' + token},
            contentType: 'multipart/form-data'));

    if (response.statusCode == 201) {
      Story data = Story.fromJson(response.data);
      return data;
    } else {
      throw Exception(response.data);
    }
  }

  viewStory(int id) async {
    try {
      await http.get(Uri.parse(url + 'view/$id/'));
    } catch (e) {
      print(e);
    }
  }

  Future<StoryLike> likeAd(int? story) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    try {
      var response = await http.get(
          Uri.parse(url + 'like-story/' + story.toString() + '/'),
          headers: {'Authorization': 'Bearer ' + token});
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      StoryLike isLiked = StoryLike.fromJson(jsonRes);
      return isLiked;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<StoryComment> createComments(int? story, String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    var response = await dio.post(url + 'comment-create/',
        data: {"story": story, "text": text},
        options: Options(headers: {'Authorization': 'Bearer ' + token}));

    if (response.statusCode == 201) {
      StoryComment data = StoryComment.fromJson(response.data);
      return data;
    } else {
      print(response.data);
      throw Exception(response.data);
    }
  }
}
