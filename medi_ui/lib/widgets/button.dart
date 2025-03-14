import 'package:flutter/material.dart';

class MediButton extends StatelessWidget {
  const MediButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Color.fromRGBO(124, 58, 237, 1.0),
      textColor: Colors.white,
      minWidth: 380,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Share'),
          SizedBox(width: 8),
          // change the icons
          Icon(Icons.file_upload_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
