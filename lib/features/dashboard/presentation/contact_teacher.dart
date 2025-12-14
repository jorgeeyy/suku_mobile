import 'package:flutter/material.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/students.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/teacher_card.dart';

import '../data/teachers.dart';

class ContactTeacher extends StatefulWidget {
  const ContactTeacher({super.key});

  @override
  State<ContactTeacher> createState() => _ContactTeacherState();
}

class _ContactTeacherState extends State<ContactTeacher> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> dummyJsonData = [
    {
      "name": "Mrs. Sarah Johnson",
      "subject": "Homeroom & Mathematics",
      "imagePath": "assets/images/madam1.png",
    },
    {
      "name": "Mr. David Chen",
      "subject": "Science & Physics",
      "imagePath": "assets/images/sir1.png",
    },
    {
      "name": "Ms. Emily Davis",
      "subject": "English Literature",
      "imagePath": "assets/images/madam2.png",
    },
    {
      "name": "Coach Michael Scoffield",
      "subject": "Physical Education",
      "imagePath": "assets/images/coach.png",
    },
    {
      "name": "Mrs. Patricia Gonzales",
      "subject": "Art & Design",
      "imagePath": "assets/images/madam3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Teacher> teachers = dummyJsonData
        .map((json) => Teacher.fromJson(json))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Teacher"),
        backgroundColor: Colors.grey[100],
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select a Teacher",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "Choose a teacher to view details or send a message",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 15),
                Students(),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 5),
                      Flexible(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: "Search for a teacher...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // TeacherCard(),
                ListView.builder(
                  shrinkWrap: true,
                  // padding: EdgeInsets.all(10),
                  itemCount: teachers.length,
                  itemBuilder: (context, index) {
                    return TeacherCard(
                      teacher: teachers[index],
                      onMessageTap: () {
                        print("Message clicked for ${teachers[index].name}");
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
