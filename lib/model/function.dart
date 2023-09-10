import 'dart:math';

import '../theme/appTheme.dart';

class CalculatorFunction {
  CalculatorFunction({this.height, this.weight});

  final int? height;
  final int? weight;

  double _bmi = 0;

// Weight divided by height in meters squared
  String calculateBMI() {
    if (height != null && weight != null) {
      _bmi = weight! / pow(height! / 100, 2);
      // Returning the BMI as a string with 1 decimal place
      return _bmi.toStringAsFixed(1);
    } else {
      return 'Invalid input'; // Return a message indicating invalid input if either height or weight is null
    }
  }

// Result title based on calculation
  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

// Advices based on calculation
  String getInterpretation() {
    if (_bmi >= 25) {
      return resultOverweight;
    } else if (_bmi > 18.5) {
      return resultNormal;
    } else {
      return resultUnderweight;
    }
  }
}
