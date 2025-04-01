import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/line_charts.dart';
import 'package:medi_ui/widgets/measure_history.dart';

import 'package:medi_ui/widgets/query_widgets.dart';

class WearableScreen extends StatelessWidget {
  const WearableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Query',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QueryWidgets(
                text: 'Haemoglobin',
                image: 'assets/tele.png',
                title: 'Iron',
              ),
              Text(
                'Compared To ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              QueryWidgets(
                text: 'Haemoglobin',
                image: 'assets/tele.png',
                title: 'Iron',
              ),
              Text('Results from 6 months  Change'),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Haemoglobin',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'High',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              MeasureHistory(),
              MeasureHistory(),
              MeasureHistory(),
              MeasureHistory(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Iron',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/z.png'),
                  Icon(Icons.menu)
                ],
              ),
              Container(
                  height: 300,
                  padding: EdgeInsets.all(16),
                  child: LineChartSample()),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 300,
                  padding: EdgeInsets.all(16),
                  child: LineChartSample()),
            ],
          ),
        ),
      ),
    );
  }
}
