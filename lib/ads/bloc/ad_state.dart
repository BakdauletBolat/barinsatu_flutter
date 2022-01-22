part of 'ad_bloc.dart';

enum AdStatus { initial, success, failure }

@freezed
class AdState with _$AdState {
  const factory AdState.loading() = AdStateLoading;
  const factory AdState.loaded({required List<Ad> adLoaded}) = AdStateLoaded;
  const factory AdState.error() = AdStateError;
}
