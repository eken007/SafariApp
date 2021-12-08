import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../constant.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: appBar(),
            snap: false,
            pinned: true,
            floating: false,
            centerTitle: true,
            backgroundColor: noir,
            expandedHeight: MediaQuery.of(context).size.height,
            flexibleSpace: FlexibleSpaceBar(
              background: pub(),
              centerTitle: true,
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 1700.0,
                  decoration: BoxDecoration(color: noir),
                  child: continu(),
                )
              ]),
              itemExtent: 1700.0)
        ],
      ),
    );
  }

  appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Safari Movies',
          style: TextStyle(
              fontFamily: 'RoboItalic',
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                      image: AssetImage("assets/images/person3.jpg"),
                      fit: BoxFit.cover)),
            ),
          ],
        )
      ],
    );
  }

  pub() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Carousel(
            dotSize: 6.0,
            dotSpacing: 20.0,
            dotColor: red,
            indicatorBgPadding: 120.0,
            dotBgColor: Colors.transparent,
            autoplay: true,
            borderRadius: true,
            images: [
              slide1(),
              slide2(),
              slide3(),
            ],
          ),
        ),
        Positioned(
          bottom: 120,
          right: 30,
          child: Container(
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
        )
      ],
    );
  }

  slide1() {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/movie1.jpg"), fit: BoxFit.fill),
        ),
        child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 185, left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Disponible maintenant",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: 'RoboBold',
                        ),
                      ),
                      Text(
                        "Bienvenue a Marly-Gomont",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'RoboBold',
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Film",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RoboBold',
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ),
                          Text(
                            "Comedie",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RoboBold',
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ),
                          Text(
                            "Drame",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RoboBold',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 120,
                  left: 30,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Center(
                        child: Text(
                      '+16',
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'RoboBold'),
                    )),
                  ),
                )
              ],
            )));
  }

  slide2() {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/cyclone.jpg"), fit: BoxFit.fill),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 185),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Disponible maintenant",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'RoboBold',
                      ),
                    ),
                    Text(
                      "L'oeil du Cyclone",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'RoboBold',
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Film",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RoboBold',
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                        Text(
                          "Drame",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RoboBold',
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                        Text(
                          "Culture",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RoboBold',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 120,
                left: 30,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Center(
                      child: Text(
                    '+12',
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'RoboBold'),
                  )),
                ),
              )
            ],
          ),
        ));
  }

  slide3() {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/movie3.jpg"), fit: BoxFit.fill),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 185),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Disponible maintenant",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'RoboBold',
                      ),
                    ),
                    Text(
                      "L'orage Africain",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'RoboBold',
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Serie",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RoboBold',
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                        Text(
                          "Amour",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RoboBold',
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                        Text(
                          "Drame",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RoboBold',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 120,
                left: 30,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Center(
                      child: Text(
                    '+18',
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'RoboBold'),
                  )),
                ),
              )
            ],
          ),
        ));
  }
}

continu() {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.only(left: 14, right: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Continue watching',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RoboBold',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      listViewContinue(),
      Padding(
        padding: EdgeInsets.only(left: 14, right: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Movies',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RoboBold',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      listViewMovie(),
      Padding(
        padding: EdgeInsets.only(left: 14, right: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Series',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RoboBold',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      listViewSeries(),
      Padding(
        padding: EdgeInsets.only(left: 14, right: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Web Series',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RoboBold',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      listViewWebSeries(),
      Padding(
        padding: EdgeInsets.only(left: 14, right: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Series Novelas',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RoboBold',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      listViewNovelas()
    ],
  );
}

listViewContinue() {
  return Container(
    height: 250,
    width: double.infinity,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 20),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/movie4.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                    // color: thirdcolor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              StepProgressIndicator(
                totalSteps: 100,
                currentStep: 32,
                fallbackLength: 250,
                size: 5,
                padding: 0,
                selectedColor: Colors.yellow,
                unselectedColor: Colors.white,
                roundedEdges: Radius.circular(10),
                selectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.red],
                ),
                unselectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, Colors.white],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'African safari 3D',
                    style: TextStyle(
                        fontFamily: 'RoboBold',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Serie',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Saison 3',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Eps. 03',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}

listViewMovie() {
  return Container(
    height: 300,
    width: double.infinity,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 20),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/movie5.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'African safari 3D',
                    style: TextStyle(
                        fontFamily: 'RoboBold',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Serie',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Documentaire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Histoire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}

listViewSeries() {
  return Container(
    height: 300,
    width: double.infinity,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 20),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/serie4.jpeg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'African safari 3D',
                    style: TextStyle(
                        fontFamily: 'RoboBold',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Serie',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Documentaire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Histoire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}

listViewWebSeries() {
  return Container(
    height: 300,
    width: double.infinity,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 20),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/serie1.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'African safari 3D',
                    style: TextStyle(
                        fontFamily: 'RoboBold',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Serie',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Documentaire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Histoire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}

listViewNovelas() {
  return Container(
    height: 300,
    width: double.infinity,
    child: ListView.builder(
      padding: EdgeInsets.only(left: 20),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/serie2.png"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'African safari 3D',
                    style: TextStyle(
                        fontFamily: 'RoboBold',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Serie',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Documentaire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        'Histoire',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}
