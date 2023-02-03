// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyectito/ejercicio1.dart';
import 'package:proyectito/ejercicio10.dart';
import 'package:proyectito/ejercicio11.dart';
import 'package:proyectito/ejercicio2.dart';
import 'package:proyectito/ejercicio3.dart';
import 'package:proyectito/ejercicio5.dart';
import 'package:proyectito/ejercicio6-1.dart';
import 'package:proyectito/ejercicio7.dart';
import 'package:proyectito/ejercicio8.dart';
import 'package:proyectito/ejercicio9.dart';

import 'NavDrawer.dart';
import 'ejercicio12.dart';
import 'ejercicio13.dart';
import 'ejercicio4.dart';
import 'ejercicio6-2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(),
        "/uno": (context) => const FirstRoute(),
        "/dos": (context) => const SecondRoute(),
        "/tres": (context) => const ThirdRoute(),
        "/cuatro": (context) => const FourthRoute(),
        "/cinco": (context) => const FifthRoute(),
        "/seis": (context) => const SixthRoute(),
        "/seis2": (context) => const Sixth2Route(),
        "/siete": (context) => const SeventhRoute(),
        "/ocho": (context) => const EighthRoute(),
        "/nueve": (context) => const NinethRoute(),
        "/diez": (context) => const TenthRoute(),
        "/once": (context) => const EleventhRoute(),
        "/doce": (context) => const TwelfthRoute(),
        "/trece": (context) => const ThirteenthRoute(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
          "Bienvenido a esta super app, para navegar entre los diferentes ejercicios despliege la barra lateral",
          style: const TextStyle(fontFamily: 'OpenSans'),
        ),
      )),
    );
  }
}
