class CounterModel {
  int count = 0;

  int increment() {
    count++;
    return count;
  }

  int decrement() {
    count--;
    return count;
  }
}
