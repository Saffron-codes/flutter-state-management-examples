import 'package:flutter/material.dart';
import 'package:sm_example/features/counter/counter_view.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
