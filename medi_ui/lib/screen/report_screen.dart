import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/grid.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            // needs to update the search bar
            SearchBar(),
            SizedBox(
              height: 10,
            ),
            SimpleGridView()
          ],
        ),
      ),
    );
  }
}
