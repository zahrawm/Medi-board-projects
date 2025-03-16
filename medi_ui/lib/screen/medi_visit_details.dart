import 'package:flutter/material.dart';
import 'package:medi_ui/widgets/medical_widgets.dart';

class MediVisitDetails extends StatefulWidget {
  const MediVisitDetails({super.key});

  @override
  State<MediVisitDetails> createState() => _MediVisitDetailsState();
}

class _MediVisitDetailsState extends State<MediVisitDetails> {
  double _currentSliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 350,
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFCFCFC),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MedicalWidgets(
                  text: 'Tracking Records',
                  image: 'assets/medi_records.png',
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'B12,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      const Text(
                        '176pg/mml 60',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 40), // Sets a small size
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                        ),
                        child: const Text(
                          'Off Track',
                          style:
                              TextStyle(fontSize: 14, color: Colors.redAccent),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.red,
                    inactiveTrackColor:
                        const Color.fromARGB(255, 224, 224, 224),
                    thumbColor: Colors.red,
                    overlayColor: Colors.red.withOpacity(0.2),
                    activeTickMarkColor: Colors.red,
                  ),
                  child: Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
                Center(
                  child: Text(
                    'Current value: ${_currentSliderValue.round()}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Text('Last test (90days ago) from pg/ml '),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Blood Test Results ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.chevron_right,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Add records ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
