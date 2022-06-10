import 'package:bmi_calculator/provider/theme_provider.dart';
import 'package:flutter/material.dart';

import 'screens/input_p.dart';

void main() => runApp(const HealthCalculator());

class HealthCalculator extends StatelessWidget {
  const HealthCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InputP(),
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
    );
  }
}
