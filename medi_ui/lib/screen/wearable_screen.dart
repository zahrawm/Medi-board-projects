import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/button.dart';
import 'package:medi_ui/widgets/flag.dart';
import 'package:medi_ui/widgets/line_charts.dart';
import 'package:medi_ui/widgets/measure_history.dart';
import 'package:medi_ui/widgets/medical_info.dart';

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
                text: 'Iron',
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
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Insights',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('See all'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward_ios, size: 10)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Flag(),
              SizedBox(
                height: 10,
              ),
              MedicalInfo(),
              MediButton(
                icon: Icons.add,
                text: 'Invite memebers',
                color: Color.fromRGBO(124, 58, 237, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
