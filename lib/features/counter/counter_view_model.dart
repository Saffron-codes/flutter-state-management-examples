import 'package:flutter/foundation.dart';
import 'package:sm_example/features/counter/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  int countValue = 0;
  final counterModel = CounterModel();

  void addBtnClicked() {
    countValue = counterModel.increment();
    notifyListeners();
  }

  void subBtnClicked() {
    countValue = counterModel.decrement();
    notifyListeners();
  }
}
