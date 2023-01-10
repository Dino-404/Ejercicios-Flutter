// ignore_for_file: prefer_const_constructors, file_names, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class NinethRoute extends StatelessWidget {
  const NinethRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Nineth Route"),
        ),
        //  Container personalizado
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Elevated Button'),
                  onPressed: () {},
                ),
              ),
              Align(
                child: ElevatedButton.icon(
                  label: Text('Elevated Button'),
                  icon: Icon(Icons.android_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                child: ElevatedButton(
                  child: Text('Elevated Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.white,
                    onSurface: Colors.grey,
                    //onSurface establece un color cuando el botón está deshabilitado
                  ),
                  onPressed: () {},
                ),
              ),
              Align(
                child: ElevatedButton(
                  child: Text('Elevated Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 37,
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed: () {},
                ),
              ),
              Align(
                child: ElevatedButton(
                  child: Text('Elevated Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 15,
                  ),
                  onPressed: () {},
                ),
              ),
              Align(
                child: ElevatedButton(
                  child: Text('Elevated Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.yellowAccent,
                    side: BorderSide(color: Colors.black54, width: 5),
                  ),
                  onPressed: () {},
                ),
              ),
              Align(
                child: ElevatedButton(
                  child: Text('Elevated Button'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                  onPressed: () {},
                ),
              ),
            ]));
  }
}
