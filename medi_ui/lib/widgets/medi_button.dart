import 'package:flutter/material.dart';

class Med extends StatelessWidget {
  const Med({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFFCFCFC),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Image.network(
                'https://via.placeholder.com/100', 
                fit: BoxFit.cover,
              ),
        ),
            SizedBox(width: 16), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Text 1',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Text 2',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Text 3',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
