import 'dart:async';
import 'dart:developer';

import 'package:barinsatu/authentication/models/user.dart' as UserModel;
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// 192.168.0.100
// 172.20.10.3
class AuthRepo {
  final url = 'http://87.249.53.253/api/auth/';

  var dio = Dio();

  Future<UserModel.UserResponse> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    try {
      var response = await http.get(Uri.parse(url + "me/"),
          headers: {'Authorization': 'Bearer ' + token});
      var jsonRes = json.decode(response.body);
      return UserModel.UserResponse.fromJson(jsonRes);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<UserModel.UserType>> getUserTypes() async {
    try {
      var response = await http.get(Uri.parse(url + "user-types/"));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      return jsonRes
          .map<UserModel.UserType>((json) => UserModel.UserType.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<UserModel.Notification>> getNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();
    try {
      var response = await http.get(Uri.parse(url + "notifications/"),
          headers: {'Authorization': 'Bearer ' + token});
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);

      return jsonRes
          .map<UserModel.Notification>(
              (json) => UserModel.Notification.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  createNotifications(int notifcationType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();
    Uri uri;
    uri = Uri.parse(url + "notification-auto-create/$notifcationType/");

    try {
      var response =
          await http.post(uri, headers: {'Authorization': 'Bearer ' + token});
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      print(jsonRes);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<UserModel.Rating> createRate(body) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    try {
      var response = await dio.post(url + "rate/",
          data: body,
          options: Options(headers: {'Authorization': 'Bearer ' + token}));
      var jsonRes = response.data;
      print(jsonRes);
      UserModel.Rating rating = UserModel.Rating.fromJson(jsonRes);

      print(rating);
      return rating;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<List<UserModel.Rating>> getRatings(int userId) async {
    Uri uri;
    uri = Uri.parse(url + "rate-list/$userId/");

    try {
      var response = await http.get(uri);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<UserModel.Rating> ratings = jsonRes
          .map<UserModel.Rating>((json) => UserModel.Rating.fromJson(json))
          .toList();
      return ratings;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  readAllNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();
    Uri uri;
    uri = Uri.parse(url + "notification-read-all/");

    try {
      var response =
          await http.get(uri, headers: {'Authorization': 'Bearer ' + token});
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      print(jsonRes);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<List<UserModel.User>> getUsersByType(int userType) async {
    Uri uri;
    uri = Uri.parse(url + "users/?user_type=$userType");

    try {
      var response = await http.get(uri);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      return jsonRes
          .map<UserModel.User>((json) => UserModel.User.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  FutureOr<UserModel.UserResponse> register(dynamic body) async {
    try {
      var response = await http.post(
        Uri.parse(url + "register/"),
        body: jsonEncode(body),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 201) {
        var jsonRes = json.decode(response.body);
        return UserModel.UserResponse.fromJson(jsonRes);
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UserModel.UserResponse> login(dynamic body) async {
    try {
      var response = await http.post(
        Uri.parse(url + "token/"),
        body: jsonEncode(body),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        var jsonRes = json.decode(response.body);
        return UserModel.UserResponse.fromJson(jsonRes);
      } else {
        print('Detail is not untetificared');
        throw Exception('Detail is not untetificared');
      }
    } catch (e) {
      print(e);
      throw Exception(e.toString());
    }
  }
}
