part of 'events_stream_cubit.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.initial() = _Initial;
  const factory EventsState.stream(QuerySnapshot<Map<String, dynamic>> data) = _Stream;
  const factory EventsState.error(String error) = _Error;
  const factory EventsState.loading() = _Loading;
  
  const factory EventsState.empty() = _Empty;
}
