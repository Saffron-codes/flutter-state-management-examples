import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_example/home_page.dart';

import 'features/counter/counter_view_model.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return CounterViewModel();
          },
        )
      ],
      child: MaterialApp(
        title: 'Flutter State Management Examples',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
