// ignore_for_file: prefer_const_constructors, file_names

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
        body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(300)),
                border: Border.all(
                  color: Colors.orange,
                  width: 5,
                ),
              ),
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                'H',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.orange,
                ),
              ),
            )));
  }
}
