import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/medical_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello Shmuel',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // Optional: Creates a notch for FAB
        notchMargin: 8, // Space around the notch
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem(Icons.home, "Home", Colors.blue),
                _buildNavItem(Icons.star, "For you", Colors.grey),
                SizedBox(width: 40),
                _buildNavItem(Icons.graphic_eq, "For you", Colors.grey),
                _buildNavItem(Icons.person, "Profile", Colors.grey),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Action for FloatingActionButton
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/visits.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/reports.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/medical_profile.png')
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/medications.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/medical_test.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/wearabls.png')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/chart.png'),
            SizedBox(
              height: 10,
            ),
            MedicalWidgets(
              image: 'assets/medi.png',
              text: 'Medications',
              color: Color.fromRGBO(255, 195, 0, 1.0),
            ),
            MedicalWidgets(
              image: 'assets/medi_visits.png',
              text: 'Visits',
              color: Color.fromRGBO(34, 211, 238, 1.0),
            ),
            MedicalWidgets(
              image: 'assets/tele.png',
              text: 'Tests',
              color: Color.fromRGBO(251, 113, 133, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(IconData icon, String label, Color color) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        icon: Icon(icon, color: color),
        onPressed: () {},
      ),
      Text(
        label,
        style:
            TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w500),
      ),
    ],
  );
}
