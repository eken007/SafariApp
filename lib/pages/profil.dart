import 'package:flutter/material.dart';

import '../constant.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: noir,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            avatar(),
            name(),
          ],
        ),
      ),
    );
  }
}

appBar() {
  return AppBar(
    title: Text(
      'Mon profil',
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

avatar() {
  return Align(
    alignment: Alignment.center,
    child: Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              image: DecorationImage(
                  image: AssetImage("assets/images/person3.jpg"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: noir, borderRadius: BorderRadius.circular(25.0)),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        )
      ],
    ),
  );
}

name() {
  return Column(
    children: [
      SizedBox(
        height: 16,
      ),
      Text(
        "Eken Franky",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: 'RoboBold',
        ),
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        "ekenfranky@gmail.com",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontFamily: 'RoboBold',
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 10, right: 10),
        height: 60,
        color: Colors.black.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Parametres de l'application",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'RoboBold',
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_right_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 6,
      ),
      Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 10, right: 10),
        height: 60,
        color: Colors.black.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Compte",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'RoboBold',
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_right_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 6,
      ),
      Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 10, right: 10),
        height: 60,
        color: Colors.black.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.help_outline_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Aide",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'RoboBold',
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_right_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Column(
        children: [
          Text(
            "Se deconnecter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'RoboBold',
            ),
          ),
          SizedBox(height: 12,),
           Text(
            "Copyright by Codex SARL",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ],
  );
}
