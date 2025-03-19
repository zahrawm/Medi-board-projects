import 'package:flutter/material.dart';
import 'package:medi_ui/screen/for_you_screen.dart';
import 'package:medi_ui/screen/medical_test_screen.dart';
import 'package:medi_ui/screen/medication_screen.dart';
import 'package:medi_ui/screen/profile_screen.dart';
import 'package:medi_ui/screen/report_screen.dart';
import 'package:medi_ui/screen/visit_screen.dart';
import 'package:medi_ui/screen/wearable_screen.dart';
import 'package:medi_ui/widgets/medical_widgets.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem(
                  Icons.home,
                  "Home",
                  Colors.blue,
                  () {},
                ),
                _buildNavItem(
                  Icons.star,
                  "For you",
                  Colors.grey,
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForYouScreen())),
                ),
                const SizedBox(width: 40),
                _buildNavItem(
                  Icons.trending_up_outlined,
                  "Reports",
                  Colors.grey,
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReportScreen())),
                ),
                _buildNavItem(
                  Icons.person,
                  "Profile",
                  Colors.grey,
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen())),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(124, 58, 237, 1.0),
        child: const Icon(Icons.grid_view),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisitScreen()),
                      );
                    },
                    child: Image.asset('assets/visits.png'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReportScreen()),
                      );
                    },
                    child: Image.asset('assets/reports.png'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      );
                    },
                    child: Image.asset('assets/medical_profile.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MedicationScreen()),
                      );
                    },
                    child: Image.asset('assets/medications.png'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MedicalTestScreen()),
                      );
                    },
                    child: Image.asset('assets/medical_test.png'),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WearableScreen()),
                      );
                    },
                    child: Image.asset('assets/wearabls.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/chart.png'),
            const SizedBox(height: 10),
            MedicalWidgets(
              image: 'assets/medi.png',
              text: 'Medications',
              color: const Color.fromRGBO(255, 195, 0, 1.0),
            ),
            MedicalWidgets(
              image: 'assets/medi_visits.png',
              text: 'Visits',
              color: const Color.fromRGBO(34, 211, 238, 1.0),
            ),
            MedicalWidgets(
              image: 'assets/tele.png',
              text: 'Tests',
              color: const Color.fromRGBO(251, 113, 133, 1.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      IconData icon, String label, Color color, VoidCallback onPressed) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, color: color),
          onPressed: onPressed,
        ),
        Text(
          label,
          style: TextStyle(
              color: color, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
