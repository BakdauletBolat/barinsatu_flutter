// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:io';

class MyData {
  int? ad_type_id = 2;
  int? rent_time_id = 1;
  int? ad_detail_type_id = 1;
  int? city_id = 1;
  int? numbers_room;
  double? total_area;
  int? total_floor;
  int? floor;
  int? year_construction;
  int? repair_type_id = 1;
  int? building_type_id = 1;
  List<int>? communications = [];
  bool is_pledge = false;
  bool is_divisibility = false;
  String? location_text = '';
  String? title;
  String? description;
  int? price;
  double? lat = 33;
  double? lng = 47;
  int? unit_of_measure = 0;
  List<File> images = [];

  clear() {
    ad_type_id = 2;
    rent_time_id = 1;
    ad_detail_type_id = 1;
    city_id = 1;
    numbers_room = null;
    total_area = null;
    total_floor = null;
    floor = null;
    year_construction = null;
    repair_type_id = 1;
    building_type_id = 1;
    communications = [];
    is_pledge = false;
    is_divisibility = false;
    location_text = '';
    title = null;
    description = null;
    price = null;
    lat = 33;
    lng = 47;
    images = [];
  }

  Map<String, dynamic> toMap() {
    return {
      'ad_type_id': ad_type_id,
      'rent_time_id': rent_time_id,
      'ad_detail_type_id': ad_detail_type_id,
      'city_id': city_id,
      'numbers_room': numbers_room,
      'total_area': total_area,
      'total_floor': total_floor,
      'floor': floor,
      'year_construction': year_construction,
      'repair_type_id': repair_type_id,
      'building_type_id': building_type_id,
      'communications': communications,
      'is_pledge': is_pledge,
      'is_divisibility': is_divisibility,
      'location_text': location_text,
      'title': title,
      'description': description,
      'price': price,
      'lat': lat,
      'lng': lng,
      'images': [],
      'unit_of_measure': unit_of_measure
    };
  }
}
