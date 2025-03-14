import 'package:flutter/material.dart';

class MediR extends StatelessWidget {
  const MediR({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    'Assuata Medical Center',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Spacer(),
                  Icon(Icons.location_on, size: 16, color: Colors.grey),
                  Text('Follow up'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Assuata Medical Center',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text('Cardiology'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Scheduled to March 15, 2023',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
