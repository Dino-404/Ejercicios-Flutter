import 'package:flutter/material.dart';
import 'package:proyectito/main.dart';

import 'NavDrawer.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nibh nisl, ullamcorper id ultricies a, vehicula quis arcu. Sed in lacus volutpat lectus sagittis rutrum non at orci. Nam varius, elit ac maximus scelerisque, lacus massa commodo leo, sit amet placerat neque felis et est. Proin id iaculis ligula. Mauris vel dolor consectetur eros fringilla varius. Ut eget est consequat, mollis massa vitae, vestibulum ipsum. Nunc cursus nec purus eu condimentum. Donec egestas vulputate felis ac ultricies. Donec tempor sem accumsan massa pulvinar, accumsan bibendum neque ornare. Phasellus et augue consequat, mollis sapien nec, molestie arcu. Sed sapien turpis, vulputate nec vulputate eget, interdum at sem. Phasellus ac ex vel velit interdum aliquam et ac lacus. Curabitur suscipit sapien ac consectetur mollis. Maecenas a tellus at mi sollicitudin ultrices.",
        style: const TextStyle(fontFamily: 'Open Sans'),
      )),
    );
  }
}
