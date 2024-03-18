import 'package:flutter/material.dart';

class FormUsager extends StatefulWidget {
  const FormUsager({super.key});

  @override
  State<FormUsager> createState() => _FormUsagerState();
}

class _FormUsagerState extends State<FormUsager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Center(
        child: Image(
          image: AssetImage('assets/image/logo.png'),
          width: 200,
          height: 100,
        ),
      ),
      Container(
        width: 350,
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            border: null,
            labelText: 'Nom :',
          ),
        ),
      ),
      Container(
        width: 350,
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            border: null,
            labelText: 'Prénom :',
          ),
        ),
      ),
      Container(
        width: 350,
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            border: null,
            labelText: 'Téléphone :',
          ),
        ),
      ),
      Container(
        width: 350,
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            border: null,
            labelText: 'Adresse :',
          ),
        ),
      ),
      Container(
        width: 350,
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            border: null,
            labelText: 'Proffession :',
          ),
        ),
      ),
    ])));
  }
}
