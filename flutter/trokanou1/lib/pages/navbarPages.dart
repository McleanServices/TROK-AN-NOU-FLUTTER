import 'package:flutter/material.dart';
import 'package:trokannou/pages/accueil.dart';
import 'package:trokannou/pages/formulaireProduit.dart';
import 'package:trokannou/pages/usager.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Accueil(),
    Usager(),
    FormProd(),
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
