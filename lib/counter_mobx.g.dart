// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on _Counter, Store {
  Computed<int>? _$valueComputed;

  @override
  int get value => (_$valueComputed ??=
          Computed<int>(() => super.value, name: '_Counter.value'))
      .value;

  late final _$_valueAtom = Atom(name: '_Counter._value', context: context);

  @override
  int get _value {
    _$_valueAtom.reportRead();
    return super._value;
  }

  @override
  set _value(int value) {
    _$_valueAtom.reportWrite(value, super._value, () {
      super._value = value;
    });
  }

  late final _$_CounterActionController =
      ActionController(name: '_Counter', context: context);

  @override
  void increment() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.decrement');
    try {
      return super.decrement();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetValue() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.resetValue');
    try {
      return super.resetValue();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
