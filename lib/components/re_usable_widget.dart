import 'package:flutter/widgets.dart';

import 'color_and_text.dart';

class ReUsableWidget extends StatelessWidget {
  const ReUsableWidget(
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

class GenderWidget extends StatelessWidget {
  const GenderWidget(
      {Key? key,
      required this.propertyColor,
      required this.icon,
      required this.label,
      required this.onPressed})
      : super(key: key);

  final Color propertyColor;
  final VoidCallback onPressed;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ReUsableWidget(
        propertyColor: propertyColor,
        childWidget: ColorText(
          label: label,
          icon: icon,
        ),
      ),
    );
  }
}
