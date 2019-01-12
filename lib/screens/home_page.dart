import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                // Add one stop for each color. Stops should increase from 0 to 1
                colors: [
                  Color(0xFF356A70),
                  Color(0xFF008C65),
                  Color(0xFF4E6D80),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 100.0, bottom: 120.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 32.0),
                  listItem(
                      "assets/image_2.jpeg",
                      "DOMESTIC",
                      "Enjoy the awesome scenario of Nepal in 2019",
                      "Somewhere, Nepal"),
                  SizedBox(width: 32.0),
                  listItem(
                      "assets/image_3.jpeg",
                      "DOMESTIC",
                      "Enjoy the awesome scenario of Nepal in 2019",
                      "Somewhere, Nepal"),
                  SizedBox(width: 32.0),
                  listItem(
                      "assets/image_1.jpg",
                      "DOMESTIC",
                      "Visit the Beautiful places of Nepal in 2019",
                      "Somewhere, Nepal"),
                  SizedBox(width: 32.0),

                ],
              ),
            ),
          ),

          Positioned(
            left: 0.0,
            right: 0.0,
            child: AppBar(
              elevation: 0.0,
              title: Text("Journey"),
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            right: 32,
            left: 32,
            bottom: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 20.0,),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.transparent,
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20.0,),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.transparent,
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white),
                  ),
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20.0,),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.transparent,
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white),
                  ),
                  child: Icon(
                    Icons.mode_comment,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem(String image, String type, String title, String location) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 20.0,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 150.0,
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF6DB6A9),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0)),
                  ),
                  child: Text(
                    type,
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 32.0),
                  width: 250.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 3),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            location,
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
