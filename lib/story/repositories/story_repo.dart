import 'package:barinsatu/story/models/story.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StoryRepo {
  String url = 'http://www.barinsatu.kz/web-api/stories';

  Future<StoryResponse> getStories() async {
    try {
      var response = await http.get(Uri.parse(url));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      print(jsonRes);
      StoryResponse ads = StoryResponse.fromJson(jsonRes);
      return ads;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
