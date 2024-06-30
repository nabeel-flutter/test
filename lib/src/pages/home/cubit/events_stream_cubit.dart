import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_stream_state.dart';
part 'events_stream_cubit.freezed.dart';

class EventsCubit extends Cubit<EventsState> {
  EventsCubit() : super(EventsState.initial());

  void getEvents() {
    emit(EventsState.loading());
    FirebaseFirestore.instance
        .collection('events')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .listen(
            (snapshot) {
              snapshot.docs.isNotEmpty?
              emit(EventsState.stream(snapshot)):emit(EventsState.empty());
            },
            onDone: () {},
            onError: (error) {
              emit(EventsState.error(error));
            });
  }
}
