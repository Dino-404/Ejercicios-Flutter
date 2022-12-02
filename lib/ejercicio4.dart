// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyectito/containerPersonalizado.dart';

import 'NavDrawer.dart';

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: const Text("Fourth Route"),
        ),
        //  Container personalizado
        body: ContainerPersonalizado.CreatecontainerContainer(
            Alignment.topLeft, 20));
  }
}
