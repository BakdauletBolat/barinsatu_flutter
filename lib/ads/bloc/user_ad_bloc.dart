import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_ad_bloc.freezed.dart';

@freezed
class AdUserEvent with _$AdUserEvent {
  const factory AdUserEvent.userAdsFetch(
      {required int offset, required int userId}) = AdEventUserFetch;
  const factory AdUserEvent.userAdsUpdate({required List<Ad> adsUpdate}) =
      AdEventUserAdsUpdate;
}

@freezed
class AdUserState with _$AdUserState {
  const factory AdUserState.loading() = AdStateLoading;
  const factory AdUserState.userAdsLoaded({required AdResponse adLoaded}) =
      AdStateUserLoaded;
  const factory AdUserState.error() = AdStateError;
}

class UserAdBloc extends Bloc<AdUserEvent, AdUserState> {
  final AdRepo adRepo;

  UserAdBloc({required this.adRepo}) : super(const AdUserState.loading()) {
    on<AdEventUserFetch>((event, emit) async {
      emit(const AdUserState.loading());
      try {
        AdResponse _adLoaded =
            await adRepo.getAds(event.offset, userId: event.userId, limit: 10);
        emit(AdUserState.userAdsLoaded(adLoaded: _adLoaded));
      } catch (_) {
        emit(const AdUserState.error());
      }
    });

    on<AdEventUserAdsUpdate>((event, emit) async {
      state.maybeWhen(
          loading: () {},
          userAdsLoaded: (adLoaded) {
            emit(AdUserState.userAdsLoaded(
                adLoaded: adLoaded.copyWith(
                    results: [...adLoaded.results, ...event.adsUpdate])));
          },
          error: () {},
          orElse: () {});
    });
  }
}
