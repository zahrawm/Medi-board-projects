import 'package:flutter/material.dart';
import 'package:medi_ui/screen/notification_screen.dart';

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
                child: Image.asset('assets/gastro.png', fit: BoxFit.cover)),
            Image.asset('assets/neuro.png', fit: BoxFit.cover),
            Image.asset('assets/denistry.png', fit: BoxFit.cover),
            Image.asset('assets/cardio.png', fit: BoxFit.cover),
            Image.asset('assets/nutrition.png', fit: BoxFit.cover),
            Image.asset('assets/endo.png', fit: BoxFit.cover),
          ]),
    );
  }
}
