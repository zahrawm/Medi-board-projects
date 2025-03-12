import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/medi-row.dart';
import 'package:medi_ui/widgets/medi_visits.dart';

class VisitScreen extends StatelessWidget {
  const VisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upcoming Vists',
        ),
        // I need to get the x  icon
        // leading: Icon(Icons.one_x_mobiledata_outlined),
      ),
      body: Column(
        children: [
          MediVisits(),
          SizedBox(
            height: 15,
          ),
          MediR()
        ],
      ),
    );
  }
}
