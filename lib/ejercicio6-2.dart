// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class Sixth2Route extends StatelessWidget {
  const Sixth2Route({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Sixth 2 Route"),
        ),
        //  Container personalizado
        body: Container(
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
        ));
  }
}
