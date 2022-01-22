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
        List<Ad> _adLoaded = await adRepo.getAds(event.offset);
        emit(AdState.loaded(adLoaded: _adLoaded));
      } catch (_) {
        emit(const AdState.error());
      }
    });

    on<AdEventUpdate>((event, emit) async {
      state.when(
          loading: () {},
          loaded: (adLoaded) {
            final List<Ad> updated = [...adLoaded, event.adUpdate];
            print(updated);
            emit(AdState.loaded(adLoaded: updated));
          },
          error: () {});
    });
  }
}
