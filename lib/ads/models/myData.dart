// ignore_for_file: file_names, non_constant_identifier_names

class MyData {
  int? ad_type_id = 1;
  int? rent_time_id = 1;
  int? ad_detail_type_id = 1;
  int? city_id = 1;
  String? numbers_room;
  String? total_area;
  String? total_floor;
  String? floor;
  String? year_construction;
  int? repair_type_id = 1;
  int? building_type_id = 1;
  List<int>? communications = [];
  bool is_pledge = false;
  bool is_divisibility = false;
  String? location_text = '';
  String? title;
  String? description;
  int? price;
  double? lat;
  double? lng;
  String imagesPath = '';

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
      'repair_type_id': repair_type_id = 1,
      'building_type_id': building_type_id = 1,
      'communications': communications = [],
      'is_pledge': is_pledge = false,
      'is_divisibility': is_divisibility = false,
      'location_text': location_text,
      'title': title,
      'description': description,
      'price': price,
      'lat': lat,
      'lng': lng,
    };
  }
}
