import 'package:flutter/material.dart';

import '../constant.dart';

class Favori extends StatefulWidget {
  @override
  _FavoriState createState() => _FavoriState();
}

class _FavoriState extends State<Favori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: noir,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

appBar() {
  return AppBar(
    title: Text(
      'Favories',
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
    backgroundColor: noir,
  );
}