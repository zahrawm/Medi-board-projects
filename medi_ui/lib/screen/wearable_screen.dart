import 'package:flutter/material.dart';

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
    );
  }
}
