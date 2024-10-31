import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_example/features/simple_calculator/calculator_viewmodel.dart';

class SimpleCalculatorView extends StatelessWidget {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  final List<String> _operations = ['+', '-', '*', '/'];
  String _operation = '+';

  @override
  Widget build(BuildContext context) {
    final calculatorViewModel = Provider.of<CalculatorViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(labelText: "Enter first number"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(labelText: "Enter second number"),
              keyboardType: TextInputType.number,
            ),
            DropdownButton<String>(
              value: _operation,
              items: _operations
                  .map((op) => DropdownMenuItem(value: op, child: Text(op)))
                  .toList(),
              onChanged: (value) {
                _operation = value!;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double num1 = double.tryParse(_num1Controller.text) ?? 0;
                double num2 = double.tryParse(_num2Controller.text) ?? 0;
                calculatorViewModel.calculateResult(num1, num2, _operation);
              },
              child: Text("Calculate"),
            ),
            SizedBox(height: 20),
            Text(
              "Result: ${calculatorViewModel.result}",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
