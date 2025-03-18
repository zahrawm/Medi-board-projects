import 'package:flutter/material.dart';

class MediButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  const MediButton({super.key, required this.text, this.icon});

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
          Text(text),
          SizedBox(width: 8),
          // change the icons
          Icon(icon, color: Colors.white),
        ],
      ),
    );
  }
}
