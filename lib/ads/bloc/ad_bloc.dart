import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ad_bloc.freezed.dart';

// part 'ad_bloc.g.dart';

part 'ad_event.dart';
part 'ad_state.dart';

class AdBloc extends Bloc<AdEvent, AdState> {
  final AdRepo adRepo;
  AdBloc({required this.adRepo}) : super(const AdState.loading()) {
    on<AdEventFetch>((event, emit) async {
      emit(const AdState.loading());
      try {
        AdResponse _adLoaded =
            await adRepo.getAds(event.offset, adType: event.adType);
        emit(AdState.loaded(adLoaded: _adLoaded));
      } catch (_) {
        emit(const AdState.error());
      }
    });

    on<AdEventUpdate>((event, emit) async {
      state.when(
          loading: () {},
          loaded: (adLoaded) {
            print(event.adsUpdate);

            emit(AdState.loaded(
                adLoaded: adLoaded.copyWith(
                    results: [...adLoaded.results, ...event.adsUpdate])));
          },
          error: () {});
    });

    on<AdEventLikeAd>((event, emit) async {
      Like like = await adRepo.likeAd(event.ad);

      state.when(
          loading: () {},
          loaded: (adLoaded) {
            final newAdloaded = adLoaded.copyWith();
            Ad currentAd = newAdloaded.results
                .firstWhere((dropdown) => dropdown.id == event.ad);

            int index = newAdloaded.results.indexOf(currentAd);

            if (like.isLiked) {
              currentAd.likes.add(like);
            } else {
              currentAd.likes.removeWhere((element) =>
                  element.ad == like.ad && element.user == like.user);
            }

            newAdloaded.results[index] = currentAd;
            print(newAdloaded);

            emit(AdState.loaded(adLoaded: newAdloaded));
          },
          error: () {});
    });
  }
}
