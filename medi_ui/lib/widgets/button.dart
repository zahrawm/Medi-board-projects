import 'package:flutter/material.dart';

class MediButton extends StatelessWidget {
  final String text;
  final IconData? icon;
   final Color color;
  const MediButton({super.key, required this.text, this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: color,
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
