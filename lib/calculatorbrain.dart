import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
   double _bmi=0;  // This will hold the calculated BMI value.

  // Method to calculate BMI
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);  // BMI formula: weight(kg) / [height(m)]^2
    return _bmi.toStringAsFixed(1);  // Returns BMI as a string with one decimal place.
  }

  // Method to get the BMI category based on the BMI value
  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else {
      return 'NORMAL';
    }
  }

  // Method to provide a complementary message based on the BMI value
  String complementary() {
    if (_bmi >= 25) {
      return 'It\'s important to maintain a healthy weight.';
    } else if (_bmi < 18.5) {
      return 'You might need to gain some weight for better health.';
    } else {
      return 'You are in a healthy range. Keep it up!';
    }
  }
}
