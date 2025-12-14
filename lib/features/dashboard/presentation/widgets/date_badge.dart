import 'package:flutter/material.dart';

class DateBadge extends StatelessWidget {
  final String month;
  final String day;

  const DateBadge({
    super.key,
    required this.month,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F0FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            month,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3A7BFF), // darker blue
            ),
          ),
          Text(
            day,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3A7BFF),
            ),
          ),
        ],
      ),
    );
  }
}
