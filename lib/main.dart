import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:safarimovies_app/pages/detail.dart';
import 'package:safarimovies_app/pages/homepages.dart';
void main() {
  runApp(MyApp());
  //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePages(),
    );
  }
}