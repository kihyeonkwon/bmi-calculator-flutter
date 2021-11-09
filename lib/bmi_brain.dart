import 'dart:math';

class BMIBrain {
  final int weight;
  final double height;
  double _bmi;
  String _result;
  String _advice;

  BMIBrain(this.weight, this.height) {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi >= 25) {
      _result = 'overweight';
      _advice = 'Exercise more!';
    } else if (_bmi >= 18.5) {
      _result = 'normal';
      _advice = 'Good job!';
    } else {
      _result = 'underweight';
      _advice = 'Eat More!';
    }
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    return _result;
  }

  String advice() {
    return _advice;
  }
}
