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
