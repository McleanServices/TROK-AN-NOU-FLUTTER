import 'package:flutter/material.dart';
import 'package:trokannou/services/usagerService.dart';
import '../database/repository.dart';
import '../model/usager.dart';

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
                MaterialPageRoute(builder: (context) => ListUSAGER()),
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
                              builder: (context) => _Nouvellepage2State()),
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

class ListUSAGER extends StatefulWidget {
  const ListUSAGER({super.key});

  @override
  State<ListUSAGER> createState() => _ListUSAGERState();
}

class _ListUSAGERState extends State<ListUSAGER> {
  @override
  late Repository _repository;
  List<Map<String, dynamic>> _Usager = [];

  @override
  void initState() {
    super.initState();
    _repository = Repository();
    _loadUsager();
  }

  void _loadUsager() async {
    List<Map<String, dynamic>> usager = await _repository.readUsager('USAGER');
    setState(() {
      _Usager = usager;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("trokanou")),
        body: ListView.builder(
            itemCount: _Usager.length,
            itemBuilder: (context, index) {
              var usager = _Usager[index];
              return Card(
                child: ListTile(
                  onTap: null,
                  leading: Column(children: [
                    CircleAvatar(
                      child: Text(
                        usager['photo'],
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                  title: Text(
                    usager['nom'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        usager['prenom'] ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        usager['addresse'] ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        usager['numero'] ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        usager['mail'] ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        usager['typeUsager'] ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          _deleteFormDialog(context, usager['id']);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}

_deleteFormDialog(BuildContext context, idUsager) {
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
                Repository _repository =
                    Repository(); // Initialize _repository here
                var result = await _repository.deleteUsager('USAGER', idUsager);
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

class _Nouvellepage2State extends StatefulWidget {
  const _Nouvellepage2State({super.key});

  @override
  State<_Nouvellepage2State> createState() => __Nouvellepage2StateState();
}

class __Nouvellepage2StateState extends State<_Nouvellepage2State> {
  @override
  late Repository _repository;
  List<Map<String, dynamic>> _Usager = [];

  @override
  void initState() {
    super.initState();
    _repository = Repository();
    _loadUsager();
  }

  void _loadUsager() async {
    List<Map<String, dynamic>> usagers = await _repository.readUsager('USAGER');
    setState(() {
      _Usager = usagers;
    });
  }

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
              Container(),
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

class FormProd extends StatefulWidget {
  @override
  _FormProdState createState() => _FormProdState();
}

class _FormProdState extends State<FormProd> {
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
        ],
      ),
    )

        // Add your widget tree here
        );
  }
}
