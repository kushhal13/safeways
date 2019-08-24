import 'package:flutter/material.dart';

class MyReportPage extends StatefulWidget {
  @override
  _MyReportPageState createState() => _MyReportPageState();
}

class _MyReportPageState extends State<MyReportPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Report page"),
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(8.0),
              child: Column(children: <Widget>[
                Container(
                  // height: 150.0,
                  // width: 350.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Card(
                          child: Container(
                              width: 330,
                              height: 130,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Deer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gongabu buspark",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "2019/08/24",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          Icon(
                                            Icons.watch,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "3:14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Center(
                        child: Card(
                          child: Container(
                              width: 330,
                              height: 130,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Deer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gongabu buspark",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "2019/08/24",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          Icon(
                                            Icons.watch,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "3:14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Center(
                        child: Card(
                          child: Container(
                              width: 330,
                              height: 130,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Deer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gongabu buspark",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "2019/08/24",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          Icon(
                                            Icons.watch,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "3:14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Center(
                        child: Card(
                          child: Container(
                              width: 330,
                              height: 130,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Deer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gongabu buspark",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "2019/08/24",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          Icon(
                                            Icons.watch,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "3:14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Center(
                        child: Card(
                          child: Container(
                              width: 330,
                              height: 130,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Deer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gongabu buspark",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "2019/08/24",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          Icon(
                                            Icons.watch,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "3:14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Center(
                        child: Card(
                          child: Container(
                              width: 330,
                              height: 130,
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Deer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gongabu buspark",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "2019/08/24",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          Icon(
                                            Icons.watch,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "3:14",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
        ));
  }
}
