import 'package:barinsatu/authentication/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthRepo {
  final url = 'https://barinsatu.kz/api/login/';

  Future<UserResponse> login(dynamic body) async {
    try {
      var response = await http.post(Uri.parse(url), body: body);
      var jsonRes = json.decode(response.body);
      return UserResponse.fromJson(jsonRes);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
