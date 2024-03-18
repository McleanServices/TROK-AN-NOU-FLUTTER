import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trokannou/database/repository.dart';
import 'pages/formulaireProduit.dart';

class FormProd extends StatefulWidget {
  @override
  _FormProdState createState() => _FormProdState();
}

class _FormProdState extends State<FormProd> {
  final TextEditingController _nomproduitcontroller = TextEditingController();
  final TextEditingController _descriptioncontroller = TextEditingController();
  final TextEditingController _typeproduitcontroller = TextEditingController();

  @override
  void dispose() {
    _nomproduitcontroller.dispose();
    _descriptioncontroller.dispose();
    _typeproduitcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('assets/image/logo.png'),
              width: 200,
              height: 100,
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "Ajouter un produit",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: <Color>[
                            Colors.greenAccent,
                            Colors.blueAccent,
                            // Add more colors here.
                          ],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
            child: Row(
              children: [
                Text('Informations Generales',
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'bold', color: Colors.black)),
              ],
            ),
          ),
          Container(
            width: 350,
            child: TextField(
              controller: _nomproduitcontroller,
              maxLength: 20,
              decoration: InputDecoration(
                border: null,
                labelText: 'Nom du produit',
              ),
            ),
          ),
          Container(
            width: 350,
            child: TextField(
              controller: _descriptioncontroller,
              maxLength: 50,
              decoration: InputDecoration(
                border: null,
                labelText: 'Description',
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Choisir le type de produit',
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'bold', color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: null,
                  onChanged: (value) {},
                ),
                Text('Service'),
                Radio(
                  value: 1,
                  groupValue: null,
                  onChanged: (value) {},
                ),
                Text('Pret'),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Ajouter une photo du produit',
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'bold', color: Colors.black)),
              ),
            ],
          ),
          Center(
            child: Image(
              image: AssetImage('assets/image/calendar.png'),
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                var produitData = {
                  'nom': _nomproduitcontroller.text,
                  'description': _descriptioncontroller.text,
                };
                var repository = Repository();
                repository.insertUsager('materielService', produitData);
              },
              child: Text('Ajouter'),
            ),
          ),
        ],
      ),
    )

        // Add your widget tree here
        );
  }
}
