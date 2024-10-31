import 'package:flutter/material.dart';
import 'package:sm_example/features/counter/counter_view.dart';

import 'features/simple_calculator/simple_calculator_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void navigateTo(BuildContext context, Widget page) {
    // Suitable for beginners
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("The following are the examples using provider"),
              FilledButton(
                onPressed: () => navigateTo(
                  context,
                  CounterView(),
                ),
                child: Text("Counter - MVVM(Provider)"),
              ),
              SizedBox(
                height: 10,
              ),
              FilledButton(
                onPressed: () => navigateTo(
                  context,
                  SimpleCalculatorView(),
                ),
                child: Text("Simple Calculator - MVVM(Provider)"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
