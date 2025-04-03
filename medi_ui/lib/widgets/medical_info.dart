import 'package:flutter/material.dart';

class MedicalInfo extends StatelessWidget {
  const MedicalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Iron',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset('assets/z.png'),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.menu)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Iron is needed for haemoglobin, part of red blood cells'),
            Text('blood cells that carry oxgen and remove carbon'),
            Text('Iron is mostly stored in the body in the'),
            Text(
              'Read more',
              style: TextStyle(
                color: Color.fromRGBO(124, 58, 237, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
