// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'NavDrawer.dart';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomColors createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = [
    'Azul',
    'Verde',
    'Naranja',
    'Rosa',
    'Rojo',
    'Amarillo',
    'Negro',
    'Morado'
  ];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
    const Color(0xFFFF66C4),
    const Color(0xFFFF0000),
    const Color(0xFFFBC512),
    const Color(0xFF000000),
    const Color(0xFF6931FF),
  ];
  bool hack = false;

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }

  void timer() {
    Timer.periodic(const Duration(milliseconds: 700), (timer) {
      if (!hack) {
        getRandomColor();
      }
      getRandomName();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/magicRubik.png"), fit: BoxFit.cover)),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Puntos: $points',
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
          Center(
              child: GestureDetector(
                  onTap: () {
                    onGiftTap(randomName, randomColor);
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(),
                            color: randomColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        width: 120,
                        height: 120,
                      ),
                      Text(randomName,
                          style: TextStyle(
                            color: randomColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(-2, -2),
                                blurRadius: 3.0,
                                color: Colors.white,
                              ),
                              Shadow(
                                offset: Offset(2, -2),
                                blurRadius: 3.0,
                                color: Colors.white,
                              ),
                              Shadow(
                                offset: Offset(-2, 2),
                                blurRadius: 3.0,
                                color: Colors.white,
                              ),
                              Shadow(
                                offset: Offset(2, 2),
                                blurRadius: 3.0,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ],
                  ))),
          FloatingActionButton(
            onPressed: () {
              hack = !hack;
            },
            child: Text("Hack"),
          )
        ]));
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(8);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(8);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'Azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'Verde';
    } else if (hexColor == const Color(0xFFFF914D)) {
      return 'Naranja';
    } else if (hexColor == const Color(0xFFFF66C4)) {
      return 'Rosa';
    } else if (hexColor == const Color(0xFFFF0000)) {
      return 'Rojo';
    } else if (hexColor == const Color(0xFF6931ff)) {
      return 'Morado';
    } else if (hexColor == const Color(0xFF000000)) {
      return 'Negro';
    } else {
      return 'Amarillo';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    getRandomName();
    setState(() {});
  }
}

class EleventhRoute extends StatelessWidget {
  const EleventhRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Eleventh Route"),
        ),
        //  Container personalizado
        body: Align(alignment: Alignment.topCenter, child: RandomColors()));
  }
}
