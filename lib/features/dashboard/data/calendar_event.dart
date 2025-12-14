import 'dart:ui';

import 'package:flutter/material.dart';

class CalendarEvent {
  final String title;
  final String time;
  final Color color;
  final DateTime date;

  CalendarEvent({
    required this.title,
    required this.time,
    required this.color,
    required this.date,
  });
}


final List<CalendarEvent> events = [
  CalendarEvent(
    title: "Mid-Term Exam Submissions",
    time: "All Grades · Due by 5:00 PM",
    color: Colors.red,
    date: DateTime(2024, 10, 5),
  ),
  CalendarEvent(
    title: "Staff Professional Development",
    time: "All Day · No Classes",
    color: Colors.orange,
    date: DateTime(2024, 10, 8),
  ),
  CalendarEvent(
    title: "Parent-Teacher Conferences",
    time: "9:00 AM – 4:00 PM · Main Auditorium",
    color: Colors.green,
    date: DateTime(2024, 10, 11),
  ),
  CalendarEvent(
    title: "Annual School Book Fair",
    time: "8:00 AM – 3:00 PM · School Library",
    color: Colors.purple,
    date: DateTime(2024, 10, 24),
  ),
];
