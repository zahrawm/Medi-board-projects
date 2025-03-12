import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.house)),
                SizedBox(width: 8),
                IconButton(onPressed: () {}, icon: Icon(Icons.graphic_eq)),
                SizedBox(width: 8),
                Text(
                  'Report',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.house)),
                IconButton(onPressed: () {}, icon: Icon(Icons.house)),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
