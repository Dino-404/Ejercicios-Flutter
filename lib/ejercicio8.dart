// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class EighthRoute extends StatelessWidget {
  const EighthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return EighthRouteLess();
  }
}

class EighthRouteLess extends StatefulWidget {
  const EighthRouteLess({super.key});

  @override
  State<EighthRouteLess> createState() => _EighthRouteLess();
}

class _EighthRouteLess extends State<EighthRouteLess> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Eighth Route"),
        ),
        //  Container personalizado
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            SizedBox(
              height: 5,
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            SizedBox(
              height: 5,
            ),
            FloatingActionButton(
              onPressed: _resetCounter,
              tooltip: 'Reset',
              child: const Icon(Icons.restart_alt),
            ),
          ],
        ));
  }
}
