import 'package:barinsatu/authentication/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// 192.168.0.100
// 172.20.10.3
class AuthRepo {
  final url = 'http://172.20.10.3:8000/api/auth/';

  Future<UserResponse> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    try {
      var response = await http.get(Uri.parse(url + "me/"),
          headers: {'Authorization': 'Bearer ' + token});
      var jsonRes = json.decode(response.body);
      return UserResponse.fromJson(jsonRes);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserResponse> login(dynamic body) async {
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
        return UserResponse.fromJson(jsonRes);
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
