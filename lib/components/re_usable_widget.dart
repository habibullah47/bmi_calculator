import 'package:flutter/widgets.dart';

class ReUsable_Widget extends StatelessWidget {
  const ReUsable_Widget(
      {Key? key, required this.propertyColor, required this.childWidget})
      : super(key: key);
  final Color propertyColor;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: propertyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: childWidget,
    );
  }
}
