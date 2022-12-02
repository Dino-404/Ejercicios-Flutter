import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
  @override
  Widget build(BuildContext context) {
    const urlImage = 'assets/piramide.jpg';
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("First route"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(urlImage,
                      width: 100, height: 100, fit: BoxFit.cover),
                  const Text(
                    "Piramide",
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(urlImage,
                      width: 100, height: 100, fit: BoxFit.cover),
                  const Text(
                    'Piramide',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(urlImage,
                      width: 100, height: 100, fit: BoxFit.cover),
                  const Text(
                    'Piramide',
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(urlImage,
                      width: 100, height: 100, fit: BoxFit.cover),
                  const Text(
                    'Piramide',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(urlImage,
                      width: 100, height: 100, fit: BoxFit.cover),
                  const Text(
                    'Piramide',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(urlImage,
                      width: 100, height: 100, fit: BoxFit.cover),
                  const Text(
                    'Piramide',
                  ),
                ],
              ),
            ],
          )
        ]));
  }
}
