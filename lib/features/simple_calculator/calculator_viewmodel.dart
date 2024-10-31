import 'package:flutter/material.dart';

import 'calculator_model.dart';

class CalculatorViewModel with ChangeNotifier {
  final CalculatorModel _calculatorModel = CalculatorModel();

  double _result = 0;
  double get result => _result;

  void calculateResult(double num1, double num2, String operation) {
    _result = _calculatorModel.calculate(num1, num2, operation);
    notifyListeners();
  }

  void reset() {
    _result = 0;
    notifyListeners();
  }

  @override
  void dispose() {
    _result = 0; // Reset result
    super.dispose();
  }
}
