import 'package:flutter/material.dart';

class MeasureHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Jan 25',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_upward,
                  color: Colors.red,
                ),
                label: Text('Below'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_downward,
                  color: Colors.red,
                ),
                label: Text(
                  'High',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
