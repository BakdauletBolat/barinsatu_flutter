import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/models/geo.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

// 172.20.10.3
// 192.168.0.100
class AdRepo {
  final url = 'http://172.20.10.3:8000/api/ad/';

  final key = 'AIzaSyCgNxK-GoiGov61CFM-f9DoF4giqtDsA08';

  Future<AdResponse> getAds(int? offset, {int? adType = 2}) async {
    try {
      var response = await http.get(Uri.parse(
          '$url?limit=5&offset=$offset&ad_type=$adType&ordering=-id'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      AdResponse ads = AdResponse.fromJson(jsonRes);
      return ads;
    } catch (e) {
      print('e');
      print(e);
      throw Exception(e.toString());
    }
  }

  Future<Like> likeAd(int? ad) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    try {
      var response = await http.get(Uri.parse(url + 'like/' + ad.toString()),
          headers: {'Authorization': 'Bearer ' + token});
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      Like isLiked = Like.fromJson(jsonRes);
      return isLiked;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<City>> getCity(int offset) async {
    try {
      var response = await http.get(Uri.parse(url + 'city/'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<City> cities =
          jsonRes.map<City>((json) => City.fromJson(json)).toList();
      return cities;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<AdType>> getAdType(int offset) async {
    try {
      var response = await http.get(Uri.parse(url + 'type/'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<AdType> adTypes =
          jsonRes.map<AdType>((json) => AdType.fromJson(json)).toList();
      return adTypes;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<AdDetailType>> getAdTypeDetail(int offset) async {
    try {
      var response = await http.get(Uri.parse(url + 'type-detail/'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<AdDetailType> adDetailTypes = jsonRes
          .map<AdDetailType>((json) => AdDetailType.fromJson(json))
          .toList();
      return adDetailTypes;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<BuildingType>> getBuildingTypes() async {
    try {
      var response = await http.get(Uri.parse(url + 'building-types/'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<BuildingType> buildingTypes = jsonRes
          .map<BuildingType>((json) => BuildingType.fromJson(json))
          .toList();
      return buildingTypes;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<RepairType>> getRepairTypes() async {
    try {
      var response = await http.get(Uri.parse(url + 'repair-types/'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<RepairType> repairTypes =
          jsonRes.map<RepairType>((json) => RepairType.fromJson(json)).toList();
      return repairTypes;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<GeoResponse> getGeoCodes(String input) async {
    try {
      print(input);
      var response = await http.get(
          Uri.parse(
              'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&language=ru&types=address&key=$key'),
          headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Headers':
                'Access-Control-Allow-Origin, Accept'
          });
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      print(jsonRes);
      GeoResponse georesponse = GeoResponse.fromJson(jsonRes);
      return georesponse;
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<GeoDetail> getGeoDetail(String place_id) async {
    try {
      var response = await http.get(Uri.parse(
          'https://maps.googleapis.com/maps/api/place/details/json?placeid=$place_id&key=$key'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      GeoDetail geoDetail =
          GeoDetail.fromJson(jsonRes['result']['geometry']['location']);
      return geoDetail;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
