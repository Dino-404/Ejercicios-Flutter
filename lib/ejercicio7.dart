// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Super Drawer',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/cover.jpg'))),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Casa'),
              ),
              ListTile(
                leading: Icon(Icons.android_rounded),
                title: Text('Android'),
              ),
              ListTile(
                leading: Icon(Icons.document_scanner),
                title: Text('Escaner'),
              ),
              ListTile(
                leading: Icon(Icons.cable),
                title: Text('Cable'),
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Seventh Route"),
        ),
        //  Container personalizado
        body: Center(
          child: Text("Despliega el drawer derecho"),
        ));
  }
}
