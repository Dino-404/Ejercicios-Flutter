import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Third Route"),
        ),
        body: Stack(
          children: [
            Container(
                constraints: BoxConstraints.expand(
                  height: 300,
                ),
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color(0xff1f005c),
                      Color(0xff5b0060),
                      Color(0xff870160),
                      Color(0xffac255e),
                      Color(0xffca485c),
                      Color(0xffe16b5c),
                      Color(0xfff39060),
                      Color(0xffffb56b),
                    ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    tileMode: TileMode.mirror,
                  ),
                ),
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0.2),
                child: Column(
                  children: [
                    Image.asset("assets/logoInstagram.png",
                        width: 100, height: 100, fit: BoxFit.cover),
                    Text('Instagram',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.grey[300])),
                  ],
                )),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    100.0,
              ),
              margin: const EdgeInsets.only(top: 300),
              color: Colors.green,
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(-0.2),
              child: Text('Pa tu body',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white)),
            )
          ],
        ));
  }
}
