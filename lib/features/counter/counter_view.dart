import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_example/features/counter/counter_view_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example - MVVM"),
      ),
      body: Center(
        child: Consumer<CounterViewModel>(
            builder: (context, counterViewModel, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count value: ${counterViewModel.countValue}"),
              FilledButton(
                onPressed: () {
                  counterViewModel.addBtnClicked();
                },
                child: const Text("Add"),
              ),
              TextButton(
                onPressed: () {
                  counterViewModel.subBtnClicked();
                },
                child: const Text("Sub"),
              ),
            ],
          );
        }),
      ),
    );
  }
}
