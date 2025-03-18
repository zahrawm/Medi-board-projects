import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add notes',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 270,
            width: 270,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white54),
            child: Text(
              'Add Note',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Documents',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'No documents you can upload or reference',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'related blood tests , reference',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add documents',
                          style: TextStyle(
                              color: Color.fromRGBO(124, 58, 237, 1.0)),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 100,
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Color.fromRGBO(124, 58, 237, 1.0),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 200,
                          height: 50,
                          color: Color.fromRGBO(124, 58, 237, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('Cancel'),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
