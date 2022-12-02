// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Indice',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Welcome'),
            onTap: () => {Navigator.pushNamed(context, "/")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Primer ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/uno")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Segundo ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/dos")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Tercer ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/tres")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Cuarto ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/cuatro")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Quinto ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/cinco")},
          ),
        ],
      ),
    );
  }
}
