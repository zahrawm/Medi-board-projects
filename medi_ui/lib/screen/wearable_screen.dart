import 'package:flutter/material.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [QueryWidgets(text: 'Haemoglobin', image: 'assets/tele.png')],
      ),
    );
  }
}
