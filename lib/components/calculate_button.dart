import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class calculateButton extends StatelessWidget {
  const calculateButton({
    Key? key,
    required this.calculate,
    required this.onTap,
  }) : super(key: key);
  final String calculate;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          color: kBottomContainerColor,
          //const Color(0xffeb1555),
          margin: const EdgeInsets.only(top: 10),
          height: kBottomContainerHeight,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                calculate,
                style: kBottomTextStyle,
              ),
              const Divider(
                color: Colors.blueGrey,
                thickness: 5.00,
                height: 2,
                indent: 120,
                endIndent: 120,
              ),
              const SizedBox(height: 5),
              const Divider(
                color: Colors.blueGrey,
                thickness: 5.00,
                height: 2,
                indent: 150,
                endIndent: 150,
              ),
              const SizedBox(height: 5),
              const Divider(
                color: Colors.blueGrey,
                thickness: 5.00,
                height: 2,
                indent: 180,
                endIndent: 180,
              ),
            ],
          )),
    );
  }
}
