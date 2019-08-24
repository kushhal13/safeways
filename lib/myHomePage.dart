import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    "images/pic5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcf9812A),
        title: Text("SafeWays"),
      ),
      body: Column(
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
          Card(
            elevation: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    constraints: BoxConstraints.expand(
                      height: 300.0,
                    ),
                    padding:
                        EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/pic1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Icon(Icons.star),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("text",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
