// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_is_empty, unused_local_variable, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class ThirteenthRoute extends StatelessWidget {
  const ThirteenthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return ThirteenthRouteLess();
  }
}

class ThirteenthRouteLess extends StatefulWidget {
  const ThirteenthRouteLess({super.key});

  @override
  State<ThirteenthRouteLess> createState() => _ThirteenthRouteLess();
}

class _ThirteenthRouteLess extends State<ThirteenthRouteLess> {
  GlobalKey<FormState> keyForm3 = new GlobalKey();
  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController passwordCtrl = new TextEditingController();
  TextEditingController repeatPassCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Décimo tercer ejercicio'),
      ),
      drawer: NavDrawer(),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(30.0),
          child: new Form(
            key: keyForm3,
            child: formUI(),
          ),
        ),
      ),
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUI() {
    return Column(
      children: <Widget>[
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nameCtrl,
              decoration: new InputDecoration(
                labelText: 'Nombre',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: repeatPassCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repetir la Contraseña',
              ),
              validator: validatePassword,
            )),
        GestureDetector(
            onTap: () {
              save();
            },
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text("Guardar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ))
      ],
    );
  }

  String? validatePassword(String? value) {
    if (value != passwordCtrl.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

  String? validateName(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value!.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }

  save() {
    if (keyForm3.currentState!.validate()) {
      print("Correcto");
      keyForm3.currentState!.reset();
    }
  }
}
