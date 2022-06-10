import 'package:flutter/material.dart';

import 'input_p.dart';

void main() => runApp(const HealthCalculator());

class HealthCalculator extends StatelessWidget {
  const HealthCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputP(),
      theme: ThemeData().copyWith(
          appBarTheme: const AppBarTheme(
            color: Colors.green,
          ),
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
