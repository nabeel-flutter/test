import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_app_test/src/constant/assets_constants.dart';
import 'package:your_app_test/src/pages/home/cubit/events_stream_cubit.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EventsCubit>(context).getEvents();
    return BlocConsumer<EventsCubit, EventsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            loading: () => Center(child: CircularProgressIndicator()),
            empty: () {
              return Center(child: Text('No events found'));
            },
            stream: (data) => SingleChildScrollView(
                  child: Column(
                    children: data.docs.map((doc) {
                      Map<String, dynamic> data =
                          doc.data();
                      return Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  AssetsConstants.placeholderImage,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              // Text details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data['name'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      data['description'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Location',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      'Date and time',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ));
      },
    );
  }
}
