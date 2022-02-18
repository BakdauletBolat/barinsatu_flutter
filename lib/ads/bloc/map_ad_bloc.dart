import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_ad_bloc.freezed.dart';

@freezed
class MapAdEvent with _$MapAdEvent {
  const factory MapAdEvent.mapAdsFetch() = MapAdFetch;
}

@freezed
class MapAdState with _$MapAdState {
  const factory MapAdState.loading() = MapAdLoading;
  const factory MapAdState.mapAdsLoaded({required List<Ad> adLoaded}) =
      MapAdUserLoaded;
  const factory MapAdState.error() = MapAdError;
}

class MapAdBloc extends Bloc<MapAdEvent, MapAdState> {
  final AdRepo adRepo;

  MapAdBloc({required this.adRepo}) : super(const MapAdState.loading()) {
    on<MapAdFetch>((event, emit) async {
      emit(const MapAdState.loading());
      try {
        List<Ad> _adLoaded = await adRepo.getMapAds();
        emit(MapAdState.mapAdsLoaded(adLoaded: _adLoaded));
        print('fetched');
      } catch (_) {
        emit(const MapAdState.error());
      }
    });
  }
}
