import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyectito/ejercicio1.dart';
import 'package:proyectito/ejercicio2.dart';
import 'package:proyectito/ejercicio3.dart';
import 'package:proyectito/ejercicio5.dart';
import 'package:proyectito/ejercicio6-1.dart';

import 'NavDrawer.dart';
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Welcome"),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
          "Bienvenido a esta super app, para navegar entre los diferentes ejercicios despliege la barra lateral",
          style: const TextStyle(fontFamily: 'Open Sans'),
        ),
      )),
    );
  }
}
