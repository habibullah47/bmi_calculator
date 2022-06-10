import 'package:flutter/material.dart';

import '../constants.dart';

//this widget was an StatelessWidget,
class ColorText extends StatefulWidget {
  const ColorText({Key? key, required this.label, required this.icon})
      : super(key: key);
  final String label;
  final IconData icon;

  @override
  State<ColorText> createState() => _ColorTextState();
}

class _ColorTextState extends State<ColorText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          widget.icon,
          size: 70,
          color: kBottomContainerColor,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          widget.label,
          style: kStyleoftext,
        )
      ],
    );
  }
}
