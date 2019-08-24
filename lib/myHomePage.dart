import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:hackathon/reportKillPage.dart';
import 'package:hackathon/reportPage.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List imageList = [
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcf9812A),
        title: Text("SafeWays"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: CarouselSlider(
                scrollDirection: Axis.horizontal,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                enlargeCenterPage: true,
                height: 300.0,
                items: imageList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage(
                                  i,
                                ),
                                fit: BoxFit.cover)),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReportPage()));
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 300.0,
                    child: Card(
                      elevation: 8.0,
                      color: Color(0xffcf9812A),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                              child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " Report Roadkills",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  )))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    height: 80.0,
                    width: 300.0,
                    child: Card(
                      elevation: 8.0,
                      color: Color(0xffcf9812A),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                              child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Map",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  )))
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Container(
              height: 80.0,
              width: 300.0,
              child: Card(
                elevation: 8.0,
                color: Color(0xffcf9812A),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " Report Roadkills",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            )))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
