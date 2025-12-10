import 'package:flutter/material.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/date_badge.dart';

class UpcomingEvents extends StatefulWidget {
  const UpcomingEvents({super.key});

  @override
  State<UpcomingEvents> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Upcoming Events", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    DateBadge(month: "OCT", day: "25"),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Parent-Teacher Meeting",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16
                          ),),
                          Text("4:00 PM - 6:00 PM",
                              style: TextStyle(color: Colors.grey[700])),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    DateBadge(month: "OCT", day: "25"),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Annual Sports Day",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16
                            ),),
                          Text("9:OO AM - 2:OO PM",
                          style: TextStyle(color: Colors.grey[700]),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
