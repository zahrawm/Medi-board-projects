import 'package:flutter/material.dart';

class MediVisits extends StatelessWidget {
  final String text;
  final String image;
  final IconData? icon;
  // final Color color;
  final String? hinttext;

  const MediVisits(
      {super.key,
      required this.text,
      required this.image,
      // required this.color,
      this.hinttext, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          text,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Icon(icon
                           ),
                        SizedBox(
                          height: 10,
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
