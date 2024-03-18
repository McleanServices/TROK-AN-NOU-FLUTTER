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
    _loadProduits();
  }

  void _loadProduits() async {
    List<Map<String, dynamic>> produits =
        await _repository.readUsager('materielService');
    setState(() {
      _produits = produits;
    });
  }

  _deleteFormDialog(BuildContext context, contactId) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: const Text(
              'Confirmer la suppression',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.red),
                onPressed: () async {
                  var result = await _repository.deleteUsager(
                      'materielService', contactId);
                  if (result != null) {
                    Navigator.pop(context);
                  }
                },
                child: const Text('Ok'),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Annuler'))
            ],
          );
        });
  }

  _editFormDialog(BuildContext context, Map<String, dynamic> produit) {
    final _editNomProduitController =
        TextEditingController(text: produit['nom']);
    final _editDescriptionController =
        TextEditingController(text: produit['description']);
    // Add controllers for other fields as needed

    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: const Text(
              'Modifier le produit',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _editNomProduitController,
                    decoration: InputDecoration(
                      labelText: 'Nom du produit',
                    ),
                  ),
                  TextField(
                    controller: _editDescriptionController,
                    decoration: InputDecoration(
                      labelText: 'Description',
                    ),
                  ),
                  // Add other input fields as needed
                ],
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green),
                onPressed: () async {
                  var updatedData = {
                    'nom': _editNomProduitController.text,
                    'description': _editDescriptionController.text,
                  };

                  var result =
                      _repository.updateUsager('materielService', updatedData);
                  if (result != null) {
                    Navigator.pop(context); // Close the dialog
                    _loadProduits(); // Refresh the products list to show the update
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Product updated successfully!'), // Show a success message
                        duration: Duration(seconds: 2),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Failed to update product.'), // Show an error message if update failed
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: const Text('Mettre à jour'),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Annuler'))
            ],
          );
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
              subtitle: Text(produit['description'].toString(),
                  style: TextStyle(fontSize: 15)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _deleteFormDialog(context, produit['idproduit']);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      _editFormDialog(context, produit);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
