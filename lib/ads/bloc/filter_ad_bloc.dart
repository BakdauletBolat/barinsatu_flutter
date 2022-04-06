import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
// ignore: library_prefixes
import 'package:barinsatu/pages/ad/FilterPage.dart' as F;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_ad_bloc.freezed.dart';

@freezed
class FilterAdEvent with _$FilterAdEvent {
  const factory FilterAdEvent.filterAdsFetch(
      {required int offset, required F.FilterData data}) = FilterAdFetch;
  const factory FilterAdEvent.filterAdsUpdate({required List<Ad> adsUpdate}) =
      FilterAdAdsUpdate;
}

@freezed
class FilterAdState with _$FilterAdState {
  const factory FilterAdState.loading() = FilterAdLoading;
  const factory FilterAdState.filterAdsLoaded({required AdResponse adLoaded}) =
      FilterAdUserLoaded;
  const factory FilterAdState.error() = FilterAdError;
}

class FilterAdBloc extends Bloc<FilterAdEvent, FilterAdState> {
  final AdRepo adRepo;

  FilterAdBloc({required this.adRepo}) : super(const FilterAdState.loading()) {
    on<FilterAdFetch>((event, emit) async {
      emit(const FilterAdState.loading());
      try {
        AdResponse _adLoaded =
            await adRepo.getFilteredAds(offset: event.offset, data: event.data);
        emit(FilterAdState.filterAdsLoaded(adLoaded: _adLoaded));
      } catch (_) {
        emit(const FilterAdState.error());
      }
    });

    on<FilterAdAdsUpdate>((event, emit) async {
      state.maybeWhen(
          loading: () {},
          filterAdsLoaded: (adLoaded) {
            emit(FilterAdState.filterAdsLoaded(
                adLoaded: adLoaded.copyWith(
                    results: [...adLoaded.results, ...event.adsUpdate])));
          },
          error: () {},
          orElse: () {});
    });
  }
}
