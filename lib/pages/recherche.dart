import 'package:flutter/material.dart';

import '../constant.dart';

class Recherche extends StatefulWidget {
  @override
  _RechercheState createState() => _RechercheState();
}

class _RechercheState extends State<Recherche> {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        backgroundColor: noir,
        appBar: appBar(),
        body: useMobileLayout
            ? buildPhoneGridView(orientation: orientation)
            : buildTabletGridView(orientation: orientation));
  }
}

appBar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: null,
    ),
    title: Container(
      padding: EdgeInsets.only(bottom: 5),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25.7))),
      child: TextField(
        controller: null,
        autofocus: false,
        style: new TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          hintText: 'Recherche',
          contentPadding: EdgeInsets.all(10),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    ],
    centerTitle: true,
    backgroundColor: noir,
  );
}

GridView buildPhoneGridView({@required Orientation orientation}) {
  return GridView.count(
    mainAxisSpacing: 5.0,
    crossAxisSpacing: 5.0,
    crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
    children: List.generate(100, (index) {
      return Container(
          decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/movie1.jpg"), fit: BoxFit.fill),
      ));
    }),
  );
}

GridView buildTabletGridView({@required Orientation orientation}) {
  return GridView.count(
    crossAxisCount: orientation == Orientation.portrait ? 4 : 5,
    children: List.generate(100, (index) {
      return Container(
        height: 172,
        child: Card(color: noir, child: resultat()),
      );
    }),
  );
}

resultat() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/movie3.jpg"), fit: BoxFit.cover),
        ),
      ),
    ],
  );
}
