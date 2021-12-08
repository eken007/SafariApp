import 'package:flutter/material.dart';

import '../constant.dart';

import 'package:carousel_slider/carousel_slider.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          color: noir,
          child: Column(
            children: [
              affiche(),
              SizedBox(
                height: 15,
              ),
              description(),
              SizedBox(
                height: 25,
              ),
              listViewActeur(),
              ListViewSimilarMovies(),
            ],
          ),
        ),
      ),
    );
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
    title: Text(
      'Detail page',
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.favorite_outline_rounded,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    ],
    centerTitle: true,
    backgroundColor: noir,
  );
}

affiche() {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
        width: double.infinity,
        height: 600,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage("assets/images/movie3.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: noir.withOpacity(0.6),
        ),
      ),
      Positioned(
        bottom: 20,
        left: 30,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  // color: thirdcolor,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Jouer maintenant',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontFamily: 'RoboBold',
              ),
            )
          ],
        ),
      ),
      Positioned(
        bottom: 20,
        right: 30,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
          child: Center(
              child: Text(
            '+16',
            style: TextStyle(color: Colors.black, fontFamily: 'RoboBold'),
          )),
        ),
      )
    ],
  );
}

description() {
  return Column(
    children: [
      Container(
          padding: EdgeInsets.only(left: 15, right: 10),
          width: double.infinity,
          child: Text(
            'Description',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'RoboBold',
            ),
          )),
      SizedBox(
        height: 20,
      ),
      Container(
          padding: EdgeInsets.only(left: 15, right: 10),
          width: double.infinity,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
            textAlign: TextAlign.justify,
          )),
    ],
  );
}

Container myActeur(String imageVal, String heading, String subHeading) {
  return Container(
    width: 150.0,
    child: Card(
      color: noir,
      child: Wrap(
        children: <Widget>[
          Image.asset(
            imageVal,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              heading,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              subHeading,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

listViewActeur() {
  return Column(
    children: [
      Container(
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Text(
                'Acteurs',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RoboBold',
                  fontSize: 20,
                ),
              )),
      Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 230,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            myActeur("assets/images/person1.jpg", "Eken Tchieko", "Franky Willy"),
            myActeur("assets/images/person2.jpg", "Eken Tchieko", "Franky Willy"),
            myActeur("assets/images/person3.jpg", "Eken Tchieko", "Franky Willy"),
            myActeur("assets/images/person4.jpg", "Eken Tchieko", "Franky Willy"),
            myActeur("assets/images/person5.jpg", "Eken Tchieko", "Franky Willy"),
            myActeur("assets/images/person6.jpg", "Eken Tchieko", "Franky Willy"),
          ],
        ),
      ),
    ],
  );
}

class ListViewSimilarMovies extends StatefulWidget {
  @override
  _ListViewSimilarMoviesState createState() => _ListViewSimilarMoviesState();
}

class _ListViewSimilarMoviesState extends State<ListViewSimilarMovies> {
  List imgList = [
    'assets/images/movie1.jpg',
    'assets/images/movie2.jpg',
    'assets/images/movie3.jpg',
    'assets/images/movie4.jpg',
    'assets/images/movie5.jpg',
    'assets/images/movie6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Text(
                'Films similaire',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RoboBold',
                  fontSize: 20,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          CarouselSlider(
            height: 400.0,
            initialPage: 0,
            enlargeCenterPage: true,
            onPageChanged: (index) {
              setState(() {
                index = 0;
              });
            },
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
