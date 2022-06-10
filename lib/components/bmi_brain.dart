import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResult() {
    if (calculateBMI() >= 25) {
      return 'Over-Weight';
    } else if (calculateBMI() >= 18.5) {
      return 'Normal';
    } else {
      return 'Under-Weight';
    }
  }

  String getInterpretation() {
    if (calculateBMI() >= 25) {
      return 'You are so fat. So for you are in Danger zone. That\'s mean You\'re vicinity to Dying. You need to do more and more exercise';
    } else if (calculateBMI() >= 18.6) {
      return 'Good Job, you lead a healthy life. keep it up';
    } else {
      return 'You are so weak, you need to eat more.';
    }
  }
}
