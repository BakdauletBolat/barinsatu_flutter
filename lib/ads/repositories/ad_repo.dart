// ignore_for_file: empty_catches, non_constant_identifier_names

import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/models/geo.dart';
// ignore: library_prefixes
import 'package:barinsatu/pages/ad/FilterPage.dart' as F;
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

// 172.20.10.3
// 192.168.0.100
class AdRepo {
  var dio = Dio();
  final url = 'http://barinsatu.kz/api/ad/';

  final key = 'AIzaSyCgNxK-GoiGov61CFM-f9DoF4giqtDsA08';

  Future<AdResponse> getAds(int? offset,
      {int? adType = 2, int? adDetailType, int? userId, int? limit}) async {
    try {
      Uri urlParsed;
      String limitStr = limit != null ? 'limit=$limit' : 'limit=5';
      String userIdStr = userId != null ? '&author=$userId' : '';
      String adTypeStr = adType != null ? '&ad_type=$adType' : '';
      String adDetailTypeStr =
          adDetailType != null ? '&ad_detail_type=$adDetailType' : '';

      urlParsed = Uri.parse(
          '$url?$limitStr&offset=$offset$adDetailTypeStr$userIdStr$adTypeStr&ordering=-id');

      var response = await http.get(urlParsed);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      AdResponse ads = AdResponse.fromJson(jsonRes);
      return ads;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<MarkerAd>> getMapAds({int ad_type = 2}) async {
    try {
      Uri urlParsed;
      urlParsed = Uri.parse(url + 'markers/?ad_type=$ad_type&ordering=-id');
      var response = await http.get(urlParsed);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<MarkerAd> ads = jsonRes['results']
          .map<MarkerAd>((json) => MarkerAd.fromJson(json))
          .toList();
      return ads;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Ad> getSingleAd(int id) async {
    try {
      Uri urlParsed;
      urlParsed = Uri.parse(url + id.toString() + '/');
      var response = await http.get(urlParsed);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      Ad ad = Ad.fromJson(jsonRes);
      return ad;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  deleteAd(int id) async {
    try {
      await http.get(Uri.parse(url + 'archive/$id/'));
    } catch (e) {}
  }

  viewAd(int id) async {
    try {
      await http.get(Uri.parse(url + 'view/$id/'));
    } catch (e) {}
  }

  Future<AdResponse> getFilteredAds({int? offset, F.FilterData? data}) async {
    try {
      Uri urlParsed;
      String limitStr = data!.limit != null ? 'limit=${data.limit}' : 'limit=5';
      String adTypeStr = data.adType != null ? '&ad_type=${data.adType}' : '';
      String cityStr = data.city != null ? '&city=${data.city}' : '';
      String priceStr = data.price_ot != null && data.price_do != null
          ? '&price__range=${data.price_ot},${data.price_do}'
          : '';
      String finalUrl = '';
      if (data.adDetailType == 1) {
        String adDetailTypeStr = data.adDetailType != null
            ? '&ad_detail_type=${data.adDetailType}'
            : '';

        String totalAreaHomeStr = data.totalAreaHome != null
            ? '&homedetail__total_area__range=${data.totalAreaHome}'
            : '';
        String numbersRoomHomeStr = data.numbersRoomHome != null
            ? '&homedetail__numbers_room__range=${data.numbersRoomHome}'
            : '';
        String floorHomeStr = data.floorHome != null
            ? '&homedetail__floor__range=${data.floorHome}'
            : '';

        String buildingTypeHomeStr = data.buildingTypeHome != null
            ? '&homedetail__building_type=${data.buildingTypeHome}'
            : '';
        String repairTypeHomeStr = data.repairTypeHome != null
            ? '&homedetail__repair_type=${data.repairTypeHome}'
            : '';

        finalUrl = adDetailTypeStr +
            totalAreaHomeStr +
            numbersRoomHomeStr +
            floorHomeStr +
            buildingTypeHomeStr +
            repairTypeHomeStr;
      } else if (data.adDetailType == 2) {
        String adDetailTypeStr = data.adDetailType != null
            ? '&ad_detail_type=${data.adDetailType}'
            : '';

        String totalAreaHomeStr = data.totalAreaHome != null
            ? '&homedetail__total_area__range=${data.totalAreaHome}'
            : '';

        String isPlageStr = data.areadetail__is_pledge != null
            ? '&areadetail__is_pledge=${data.areadetail__is_pledge}'
            : '';

        String isDivibilytyStr = data.areadetail__is_divisibility != null
            ? '&areadetail__is_divisibility=${data.areadetail__is_divisibility}'
            : '';

        finalUrl =
            adDetailTypeStr + totalAreaHomeStr + isPlageStr + isDivibilytyStr;
      } else if (data.adDetailType == 3) {
        String adDetailTypeStr = data.adDetailType != null
            ? '&ad_detail_type=${data.adDetailType}'
            : '';

        String totalAreaHomeStr = data.totalAreaAperment != null
            ? '&apartmentdetail__total_area__range=${data.totalAreaAperment}'
            : '';
        String numbersRoomHomeStr = data.numbersRoomAperment != null
            ? '&apartmentdetail__numbers_room__range=${data.numbersRoomAperment}'
            : '';
        String floorHomeStr = data.floorAperment != null
            ? '&apartmentdetail__floor__range=${data.floorAperment}'
            : '';

        String buildingTypeHomeStr = data.buildingTypeAperment != null
            ? '&apartmentdetail__building_type=${data.buildingTypeAperment}'
            : '';
        String repairTypeHomeStr = data.repairTypeAperment != null
            ? '&apartmentdetail__repair_type=${data.repairTypeAperment}'
            : '';

        finalUrl = adDetailTypeStr +
            totalAreaHomeStr +
            numbersRoomHomeStr +
            floorHomeStr +
            buildingTypeHomeStr +
            repairTypeHomeStr;
      }

      urlParsed = Uri.parse(
          '$url?$limitStr&offset=$offset$adTypeStr$finalUrl$priceStr$cityStr&ordering=-id');

      var response = await http.get(urlParsed);
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);

      if (response.statusCode == 200) {
        AdResponse ads = AdResponse.fromJson(jsonRes);
        return ads;
      } else {
        throw Exception('ошибка сети');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Communications>> getCommunications() async {
    try {
      var response = await http.get(Uri.parse(url + 'communications/'));
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      List<Communications> communications = jsonRes
          .map<Communications>((json) => Communications.fromJson(json))
          .toList();
      return communications;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Like> likeAd(int? ad) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    try {
      var response = await http.get(
          Uri.parse(url + 'like/' + ad.toString() + '/'),
          headers: {'Authorization': 'Bearer ' + token});
      var utfEncode = utf8.decode(response.bodyBytes);
      var jsonRes = json.decode(utfEncode);
      Like isLiked = Like.fromJson(jsonRes);
      return isLiked;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Comment>> getComments(int? ad) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();
    var response = await http.get(Uri.parse(url + 'comments/' + ad.toString()),
        headers: {'Authorization': 'Bearer ' + token});
    var utfEncode = utf8.decode(response.bodyBytes);
    var jsonRes = json.decode(utfEncode);

    try {
      List<Comment> comments =
          jsonRes.map<Comment>((json) => Comment.fromJson(json)).toList();
      return comments;
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

      GeoResponse georesponse = GeoResponse.fromJson(jsonRes);
      return georesponse;
    } catch (e) {
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

  Future<Ad> createAd(FormData formData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();
    var response = await dio.post(url + 'create/',
        data: formData,
        options: Options(
            headers: {'Authorization': 'Bearer ' + token},
            contentType: 'multipart/form-data'));

    if (response.statusCode == 201) {
      Ad data = Ad.fromJson(response.data);
      return data;
    } else {
      throw Exception(response.data);
    }
  }

  Future<Comment> createComments(int? ad, String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken').toString();

    var response = await dio.post(url + 'comments/',
        data: {"ad": ad, "text": text},
        options: Options(headers: {'Authorization': 'Bearer ' + token}));

    if (response.statusCode == 201) {
      Comment data = Comment.fromJson(response.data);
      return data;
    } else {
      throw Exception(response.data);
    }
  }
}
