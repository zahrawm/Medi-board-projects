import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchContainer extends StatelessWidget {
  final String text;
  final String title;
  final bool switchValue;
  final String? hintText;
  final ValueChanged<bool> onChanged;

  const SwitchContainer({
    Key? key,
    required this.title,
    required this.switchValue,
    required this.onChanged,
    required this.text,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              hintText!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            CupertinoSwitch(
              value: switchValue,
              onChanged: onChanged,
              activeColor: Color.fromRGBO(124, 58, 237, 1.0),
            ),
          ],
        ),
        Text(title),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
