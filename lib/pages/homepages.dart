import 'package:flutter/material.dart';
import 'package:safarimovies_app/constant.dart';
import 'package:safarimovies_app/pages/home.dart';
import 'package:safarimovies_app/pages/recherche.dart';
import 'package:safarimovies_app/pages/profil.dart';
import 'package:safarimovies_app/pages/favori.dart';
import 'package:bottom_bar/bottom_bar.dart';



class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<Widget> pages = [MyHomePage(), Favori(),Recherche(), Profil()];
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      bottomNavigationBar: BottomBar(
        backgroundColor: noir,
        selectedIndex: _currentPage,
        onTap: (int index) {
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Accueil'),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favories'),
            activeColor: Colors.white,
            darkActiveColor: Colors.yellow, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.search),
            title: Text('Recherche'),
            activeColor: Colors.white,
            darkActiveColor: Colors.greenAccent.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
            activeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
