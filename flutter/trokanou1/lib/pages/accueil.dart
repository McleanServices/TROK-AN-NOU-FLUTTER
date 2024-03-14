import 'package:flutter/material.dart';
import 'package:trokannou/pages/usager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Usager(),
    Usager(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usager'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), label: 'Ajouter un produit'),
        ],
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
      ),
    );
  }
}
