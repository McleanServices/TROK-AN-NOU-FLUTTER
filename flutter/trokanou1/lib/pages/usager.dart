import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trokannou/database/repository.dart';
import 'pages/formulaireProduit.dart';

class Usager extends StatefulWidget {
  const Usager({super.key});

  @override
  State<Usager> createState() => _UsagerState();
}

class _UsagerState extends State<Usager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 40.0, // Remplacez "Icons.menu" par l'icône de votre choix
          color: Color.fromARGB(255, 0, 0, 0), // Couleur de l'icône
        ),
        title: const Text('Trokanou'),
        centerTitle: true,
        // Centrer le titre de l'AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            iconSize: 40.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NouvellePage()),
              );
            },
          ),
        ],
      ),
      body: Container(
          color: Colors.blueGrey,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      "gestion des comptes",
                      style: TextStyle(
                        fontSize:
                            20.0, // Ajustez cette valeur en fonction de la taille souhaitée
                        // Autres propriétés de style si nécessaire (comme fontWeight, color, etc.)
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 0, 120, 0),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.add_circle),
                      iconSize: 30.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NouvellePage()),
                        );
                      },
                    ),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  ),
                  Container(
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Container(
                // Ajoutez cette ligne pour définir la couleur d'arrière-plan du Row
                color: Colors
                    .blue, // Remplacez 'Colors.blue' par la couleur de votre choix

                child: Row(
                  children: [
                    Container(
                      child: Image.asset("assets/image/calendar.png",
                          height: 55, width: 55),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text("nom"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                        Container(
                          child: Text("professions"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                        Container(
                          child: Text("prêt ou service"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(Icons.delete),
                          margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                        ),
                        Container(
                          child: Icon(Icons.edit_document),
                          margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // Ajoutez cette ligne pour définir la couleur d'arrière-plan du Row
                color: Colors
                    .lightGreenAccent, // Remplacez 'Colors.blue' par la couleur de votre choix

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/image/calendar.png",
                          height: 55, width: 55),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text("nom"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                        Container(
                          child: Text("professions"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                        Container(
                          child: Text("prêt ou service"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(Icons.delete),
                          margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                        ),
                        Container(
                          child: Icon(Icons.edit_document),
                          margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // Ajoutez cette ligne pour définir la couleur d'arrière-plan du Row
                color: Color.fromARGB(224, 127, 142,
                    154), // Remplacez 'Colors.blue' par la couleur de votre choix

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/image/calendar.png",
                          height: 55, width: 55),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text("nom"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                        Container(
                          child: Text("professions"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                        Container(
                          child: Text("prêt ou service"),
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(Icons.delete),
                          margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                        ),
                        Container(
                          child: Icon(Icons.edit_document),
                          margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class NouvellePage extends StatefulWidget {
  @override
  _NouvellePageState createState() => _NouvellePageState();
}

class _NouvellePageState extends State<NouvellePage> {
  final TextEditingController _nomcontroller = TextEditingController();
  final TextEditingController _prenomcontroller = TextEditingController();
  final TextEditingController _telephonecontroller = TextEditingController();
  final TextEditingController _adressecontroller = TextEditingController();
  final TextEditingController _professioncontroller = TextEditingController();

  @override
  void dispose() {
    _nomcontroller.dispose();
    _prenomcontroller.dispose();
    _telephonecontroller.dispose();
    _adressecontroller.dispose();
    _professioncontroller.dispose();

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
            Container(
              width: 350,
              child: TextField(
                controller: _nomcontroller,
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
                controller: _prenomcontroller,
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
                controller: _telephonecontroller,
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
                controller: _adressecontroller,
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
                controller: _professioncontroller,
                maxLength: 50,
                decoration: InputDecoration(
                  border: null,
                  labelText: 'Profession :',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  var produitData = {
                    'Nom': _nomcontroller.text,
                    'Prénom': _prenomcontroller.text,
                    'Téléphone': _telephonecontroller,
                    'Adresse': _adressecontroller,
                    'Profession': _professioncontroller
                  };
                  var repository = Repository();
                  repository.insertUsager('materielService', produitData);
                },
                child: Text('Ajouter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
