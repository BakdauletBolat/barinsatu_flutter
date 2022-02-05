part of 'ad_bloc.dart';

@freezed
class AdState with _$AdState {
  const factory AdState.loading() = AdStateLoading;
  const factory AdState.loaded({required AdResponse adLoaded}) = AdStateLoaded;
  const factory AdState.error() = AdStateError;
}
