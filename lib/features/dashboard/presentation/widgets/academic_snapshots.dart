import 'package:flutter/material.dart';

class AcademicSnapshots extends StatefulWidget {
  const AcademicSnapshots({super.key});

  @override
  State<AcademicSnapshots> createState() => _AcademicSnapshotsState();
}

class _AcademicSnapshotsState extends State<AcademicSnapshots> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Academic Snapshot", style: TextStyle(
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
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE8F0FF),
                      ),
                      child: Icon(Icons.pie_chart, color: Color(0xFF3A7BFF)),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Attendance",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "This Month",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "98%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE8F0FF),
                      ),
                      child: Icon(Icons.school, color: Color(0xFF3A7BFF)),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Latest Grade", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),), Text("This Month", style: TextStyle(
                        color: Colors.grey[700],
                      ),)],
                    ),
                    Spacer(),
                    Text("A-", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
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
