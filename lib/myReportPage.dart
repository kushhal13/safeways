// import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class MyReportPage extends StatefulWidget {
  final detailList;

  const MyReportPage({Key key, this.detailList}) : super(key: key);
  @override
  _MyReportPageState createState() => _MyReportPageState();
}

class _MyReportPageState extends State<MyReportPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffcf9812A),
          title: Text("My Report page"),
        ),
        body: widget.detailList == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: widget.detailList.length,
                itemBuilder: (BuildContext context, int index) {
                  var detailData = widget.detailList[index];
                  print("detailData:$detailData");
                  return Container(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                detailData.speciesName,
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
                                                detailData.area,
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
                                                    "2019/9/25",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                      ]));
                }));
  }
}

class Details {
  String speciesName;
  String area;
  Details({
    this.speciesName,
    this.area,
  });
}
