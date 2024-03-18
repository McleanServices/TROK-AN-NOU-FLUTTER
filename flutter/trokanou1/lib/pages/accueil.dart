import 'package:flutter/material.dart';
import 'package:trokannou/database/repository.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  late Repository _repository;
  List<Map<String, dynamic>> _produits = [];

  @override
  void initState() {
    super.initState();
    _repository = Repository();
    _loadContacts();
  }

  void _loadContacts() async {
    List<Map<String, dynamic>> produits =
        await _repository.readUsager('materielService');
    setState(() {
      _produits = produits;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _produits.length,
        itemBuilder: (context, index) {
          var produit = _produits[index];
          return Card(
            child: ListTile(
              title: Text(produit['nom'], style: TextStyle(fontSize: 20)),
              subtitle: Text(produit['description']),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () async {
                  null;
                },
              ),
            ),
          );
        });
  }
}
