part of 'ad_bloc.dart';

@freezed
class AdEvent with _$AdEvent {
  const factory AdEvent.fetch({required int offset}) = AdEventFetch;
  const factory AdEvent.update({required Ad adUpdate}) = AdEventUpdate;
}
