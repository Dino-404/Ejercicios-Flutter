// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_is_empty, unused_local_variable, library_private_types_in_public_api

import 'dart:math';

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class TwelfthRoute extends StatelessWidget {
  const TwelfthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return TwelfthRouteLess();
  }
}

class TwelfthRouteLess extends StatefulWidget {
  const TwelfthRouteLess({super.key});

  @override
  State<TwelfthRouteLess> createState() => _TwelfthRouteLess();
}

class _TwelfthRouteLess extends State<TwelfthRouteLess> {
  GlobalKey<FormState> keyForm2 = new GlobalKey();
  TextEditingController numberCtrl = new TextEditingController();
  int randomNumber = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Duodécimo ejercicio'),
      ),
      drawer: NavDrawer(),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(30.0),
          child: new Form(
            key: keyForm2,
            child: formUI(),
          ),
        ),
      ),
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUI() {
    return Column(
      children: <Widget>[
        formItemsDesign(
            Icons.casino,
            TextFormField(
                controller: numberCtrl,
                decoration: new InputDecoration(
                  labelText: 'Numero',
                ),
                validator: (value) {
                  int? number = int.tryParse(value!);
                  if (number == randomNumber) {
                    return "Correcto";
                  } else if (number! > randomNumber) {
                    return "El numero es menor";
                  } else if (number < randomNumber) {
                    return "El numero es mayor";
                  }
                  return "Error";
                })),
        GestureDetector(
            onTap: () {
              check();
            },
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text("Guardar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ))
      ],
    );
  }

  check() {
    if (keyForm2.currentState!.validate()) {
      print("Correcto");
      keyForm2.currentState!.reset();
    }
  }
}
