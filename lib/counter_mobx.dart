import 'package:mobx/mobx.dart';

part 'counter_mobx.g.dart';

class Counter extends _Counter with _$Counter {}

abstract class _Counter with Store {
  @observable
  int _value = 0;

  @computed
  int get value => _value;

  @action
  void increment() {
    _value++;
  }

  @action
  void decrement() {
    _value--;
  }

  @action
  void resetValue() {
    _value = 0;
  }

  void setupReactions() {
    when((_) => _value >= 10, () {
      // ignore: avoid_print
      print("Count has reached the limit of 10");
      resetValue();
    });
  }
}
