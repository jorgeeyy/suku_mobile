import 'package:flutter/material.dart';
import 'package:suku_mobile/features/dashboard/data/teachers.dart';

class TeacherCard extends StatelessWidget {
  final Teacher teacher;
  final VoidCallback? onMessageTap;
  const TeacherCard({super.key, required this.teacher, required this.onMessageTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon(Icons.person),
          CircleAvatar(
            radius: 25,
            // backgroundImage: AssetImage("assets/images/madam1.png"),
            backgroundImage: AssetImage(teacher.imagePath),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "Mrs. Sarah Johnson",
                  teacher.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  // "Mathematics",
                  teacher.subject,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: onMessageTap,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 22,
              child: Icon(Icons.chat_bubble, color: Colors.white, size: 20),
            ),
          ),
          ],
      ),
    );
  }
}
