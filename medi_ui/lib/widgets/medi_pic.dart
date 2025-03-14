import 'package:flutter/material.dart';
import 'package:medi_ui/screen/medi_visit_details.dart';

class MediPic extends StatelessWidget {
  const MediPic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MediVisitDetails()),
        );
      },
      child: Container(
        width: 420,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/heart.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
