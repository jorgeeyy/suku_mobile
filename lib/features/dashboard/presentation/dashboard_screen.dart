import 'package:flutter/material.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/academic_snapshots.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/alerts.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/quick_links.dart';
import 'package:suku_mobile/features/dashboard/presentation/widgets/upcoming_events.dart';

class DashboardScreen extends StatefulWidget {
  final String name;
  const DashboardScreen({super.key, required this.name});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          // decoration: BoxDecoration(
          //   color: Colors.transparent,
          // ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              selectedFontSize: 16,
              unselectedFontSize: 16,
              currentIndex: _selectedIndex,
              // backgroundColor: Colors.grey[200],
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: "Calendar",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.messenger),
                  label: "Messages",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning, ${widget.name}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,
                        ),
                        // color: Colors.blue,
                        child: Text(
                          "James Williams",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[100],
                        ),
                        // color: Colors.grey[100],
                        // color: Theme.of(context).colorScheme.secondary,
                        child: Text(
                          "Olivia Williams",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Alerts(),
                SizedBox(height: 15,),
                UpcomingEvents(),
                SizedBox(height: 15,),
                AcademicSnapshots(),
                SizedBox(height: 15,),
                QuickLinks()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
