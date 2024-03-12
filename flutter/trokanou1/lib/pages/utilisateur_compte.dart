import 'package:flutter/material.dart';
import 'package:trokannou/services/usagerService.dart';

class Compte extends StatefulWidget {
  const Compte({super.key});

  @override
  State<Compte> createState() => _AccueilState();
}

class _AccueilState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 40.0, // Remplacez "Icons.menu" par l'icône de votre choix
          color: Color.fromARGB(255, 0, 0, 0), // Couleur de l'icône
        ),
        title: const Text('Trokanou'),
        centerTitle: true,
        // Centrer le titre de l'AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
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
                      child: Image.asset("asset/image/image.png",
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
                      child: Image.asset("asset/image/image.png",
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
                      child: Image.asset("asset/image/image.png",
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

class NouvellePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle Page'),
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          color: Colors.cyan,
          height: 750,
          width: 450,
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "asset/image/image.png",
                    height: 75,
                    width: 75,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
              ),
              Container(
                child: Text('Nom', style: TextStyle(fontSize: 25)),
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              ),
              Container(
                child: Text('prenom', style: TextStyle(fontSize: 25)),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              ),
              Container(
                child: Text('Téléphone', style: TextStyle(fontSize: 25)),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              ),
              Container(
                child: Text('Adresse', style: TextStyle(fontSize: 25)),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              ),
              Container(
                child: Text('profession', style: TextStyle(fontSize: 25)),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              ),
            ],
          )),
    );
  }
}
