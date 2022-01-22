import 'package:barinsatu/ads/models/ad.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AdRepo {
  final url = 'http://192.168.0.101:8000/api/ad/';

  Future<List<Ad>> getAds(int offset) async {
    try {
      var response = await http.get(Uri.parse(url));
      var jsonRes = json.decode(response.body);
      List<Ad> ads =
          jsonRes['ads'].map<Ad>((json) => Ad.fromJson(json)).toList();
      return ads;
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<City> getCity(int offset) async {
    try {
      var response = await http.get(Uri.parse(url + 'city/'));
      var jsonRes = json.decode(response.body);
      return City.fromJson(jsonRes);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<AdType> getAdType(int offset) async {
    try {
      var response = await http.get(Uri.parse(url + 'type/'));
      var jsonRes = json.decode(response.body);
      return AdType.fromJson(jsonRes);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<AdDetailType> getAdTypeDetail(int offset) async {
    try {
      var response = await http.get(Uri.parse(url + 'type-detail/'));
      var jsonRes = json.decode(response.body);
      return AdDetailType.fromJson(jsonRes);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
