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
      body: const Center(
        child: Text('Bienvenue sur Trokanou'),
      ),
    );
  }
}

