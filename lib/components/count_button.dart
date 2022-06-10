import 'package:flutter/material.dart';

import '../constants.dart';

class CountButton extends StatelessWidget {
  const CountButton(
      {Key? key,
      required this.iconWidget,
      required this.onLongPress,
      required this.onPress,
      required this.onLongPressEnd})
      : super(key: key);
  final VoidCallback onPress;
  final VoidCallback onLongPress;
  final GestureLongPressEndCallback onLongPressEnd;
  final Widget iconWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      onLongPress: onLongPress,
      onLongPressEnd: onLongPressEnd,
      child: Card(
        elevation: 10,
        color: kBottomContainerColor,
        child: Container(
          width: 50,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kBottomContainerColor,
          ),
          child: iconWidget,
        ),
      ),
    );
  }
}
