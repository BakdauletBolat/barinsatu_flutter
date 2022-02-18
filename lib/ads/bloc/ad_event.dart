part of 'ad_bloc.dart';

@freezed
class AdEvent with _$AdEvent {
  const factory AdEvent.fetch({required int offset, required int adType}) =
      AdEventFetch;
  const factory AdEvent.update({required List<Ad> adsUpdate}) = AdEventUpdate;
  const factory AdEvent.likeAd({required int ad}) = AdEventLikeAd;
  const factory AdEvent.commendAdd({required int ad, required String text}) =
      AdEventCommentAdd;
}
