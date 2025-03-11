import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/small_circle.dart';

class MedicalWidgets extends StatelessWidget {
  final String text;
  final String image;
  final Color color;

  const MedicalWidgets(
      {super.key,
      required this.text,
      required this.image,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 10,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image),
                SizedBox(width: 8),
                Text(
                  text,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                SmallCircle(
                  color: color,
                ),
                SizedBox(width: 8),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
