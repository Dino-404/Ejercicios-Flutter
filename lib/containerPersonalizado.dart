// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class ContainerPersonalizado {
  // ignore: non_constant_identifier_names
  static Widget CreatecontainerContainer(Alignment alignment, double padding) {
    return Container(
        alignment: alignment,
        padding: EdgeInsets.all(padding),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xfff39060),
            Color(0xffffb56b),
          ],
          tileMode: TileMode.mirror,
        )),
        child: Column(
          children: [
            Text('Instagram'),
          ],
        ));
  }
}
