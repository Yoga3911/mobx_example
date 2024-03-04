import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'counter_mobx.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late Counter _counter;

  @override
  void initState() {
    _counter = Counter();
    _counter.setupReactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "increment",
            onPressed: () {
              _counter.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: () {
              _counter.decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Observer(
          builder: (_) => Text(
            _counter.value.toString(),
          ),
        ),
      ),
    );
  }
}
