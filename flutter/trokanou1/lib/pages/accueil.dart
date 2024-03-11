import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trokanou'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Text('Ajouter un produit', style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text('Informations Generales', style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/image/calendar.png',width: 150, height: 150,),
            ],
          ),

        ],
      ),
    );
  }
}
