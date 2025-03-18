import 'package:flutter/material.dart';

import 'package:medi_ui/widgets/medical_widgets.dart';

class MediVisitDetails extends StatefulWidget {
  const MediVisitDetails({super.key});

  @override
  State<MediVisitDetails> createState() => _MediVisitDetailsState();
}

class _MediVisitDetailsState extends State<MediVisitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/detail.png',
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/details.png',
          ),
        ],
      ),
    ));
  }
}
