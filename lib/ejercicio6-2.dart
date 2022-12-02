// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class Sixth2Route extends StatelessWidget {
  const Sixth2Route({super.key});

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
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.lightBlue,
            offset: Offset(8, 8),
            blurRadius: 5,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        'Soy una cabecera :D',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
