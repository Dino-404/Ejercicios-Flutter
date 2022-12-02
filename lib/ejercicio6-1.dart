import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class SixthRoute extends StatelessWidget {
  const SixthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Sixth Route"),
        ),
        //  Container personalizado
        body: const MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenge")),
      body: Container(child: Text("H")),
    );
  }
}
