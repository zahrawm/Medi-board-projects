import 'package:flutter/material.dart';
import 'package:medi_ui/screen/note_screen.dart';
import 'package:medi_ui/widgets/button.dart';

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
            height: 10,
          ),
          Text('Activity from past',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/details.png',
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/person.png'),
                    Text(
                      'Prepare your internal notes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Add your notes or ask team members to add'),
                    Text('remarks towards the visit'),
                    SizedBox(
                      height: 10,
                    ),
                    MediButton(
                      text: 'Invite Memebers',
                      color: Color.fromRGBO(124, 58, 237, 1.0), 
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NoteScreen()),
                        );
                      },
                      color: Color.fromARGB(255, 223, 220, 227),
                      textColor: Colors.white,
                      minWidth: 380,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          Text('Add a note'),
                          SizedBox(width: 8),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
