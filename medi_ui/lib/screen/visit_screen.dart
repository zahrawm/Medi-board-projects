import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/button.dart';
import 'package:medi_ui/widgets/medi-row.dart';

import 'package:medi_ui/widgets/medi_pic.dart';
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
        leading: Icon(
          Icons.close,
          color: Colors.grey,
        ),
      ),
      body: Column(
        children: [
          MediVisits(
            text: 'Dr.Assualta Corahen',
            image: 'assets/doc.png',
            //update the icon
            icon: Icons.open_in_new,
          ),
          SizedBox(
            height: 15,
          ),
          MediR(),
          SizedBox(height: 10),
          MediButton(
            text: 'Share',
            icon: Icons.file_upload_outlined,
          ),
          SizedBox(
            height: 10,
          ),
          MediPic()
        ],
      ),
    );
  }
}
