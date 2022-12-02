// ignore_for_file: prefer_const_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

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
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Sexto ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/seis")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Sexto 2 ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/seis2")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Septimo ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/siete")},
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Octavo ejercicio'),
            onTap: () => {Navigator.pushNamed(context, "/ocho")},
          ),
        ],
      ),
    );
  }
}
