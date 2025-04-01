import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  const Flag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/flag.png'),
          SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'In the last test your haemoglobin and iron was abnormal',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                Text(
                  'We recommend you consult with your medical doctor',
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
