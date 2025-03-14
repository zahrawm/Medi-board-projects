import 'package:flutter/material.dart';

class MediVisitDetails extends StatefulWidget {
  const MediVisitDetails({super.key});

  @override
  State<MediVisitDetails> createState() => _MediVisitDetailsState();
}

class _MediVisitDetailsState extends State<MediVisitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Column(
                    children: [],
                  ),
                ))));
  }
}
