part of 'preload_bloc.dart';

@freezed
class PreloadEvent with _$PreloadEvent {
  const factory PreloadEvent.initialize() = _Initialize;
  const factory PreloadEvent.fetch() = PreloadEventFetch;
  const factory PreloadEvent.onVideoIndexChanged(int index) =
      _OnVideoIndexChanged;
  const factory PreloadEvent.onVideoInit(int index) = _OnVideoInit;
  const factory PreloadEvent.error() = PreloadEventError;
}
