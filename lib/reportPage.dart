import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  var _dead = ["Dead", "Injured"];

  var type = ["Domestic", "Wild"];
  var initialType = "Domestic";

  var injury = ["Yes", "No"];
  var injuryType = "Yes";

  var currentItemSelected = "Dead";
  var dailog;
  File newImage;

  var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
  );

  Dio dio = Dio();

  TextEditingController speciesName = new TextEditingController();
  TextEditingController area = new TextEditingController();

  Future optionsDialogBox() {
    return dailog != null
        ? Text("jfdkla")
        : showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: new SingleChildScrollView(
                  child: new ListBody(
                    children: <Widget>[
                      GestureDetector(
                          child: new Text('Take a picture'),
                          onTap: () {
                            setState(() {
                              dailog = "skdjf";
                            });
                            getImage(true);
                          }),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                      GestureDetector(
                        child: new Text('Select from gallery'),
                        onTap: () {
                          setState(() {
                            dailog = "skdjf";
                          });
                          getImage(false);
                        },
                      ),
                    ],
                  ),
                ),
              );
            });
  }

  Future<dynamic> makeReport(String speciesName, String area) async {
    try {
      Options options = Options(
        contentType: ContentType.parse('application/json'),
      );

      Response response = await dio.post(
          'https://safe-wayss.herokuapp.com/api/reports',
          data: {"speciesName": speciesName, "area": area},
          options: options);
      // return response;
      print("response:$response");
    } on DioError catch (exception) {
      if (exception == null ||
          exception.toString().contains('SocketException')) {
        throw Exception("Network Error");
      } else if (exception.type == DioErrorType.RECEIVE_TIMEOUT ||
          exception.type == DioErrorType.CONNECT_TIMEOUT) {
        throw Exception(
            "Could'nt connect, please ensure you have a stable network.");
      } else {
        return null;
      }
    }
  }

  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      newImage = image;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcf9812A),
        title: Text("Register page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            newImage != null
                ? Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: FileImage(newImage),
                        )))
                : GestureDetector(
                    onTap: () {
                      optionsDialogBox();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      child: Center(
                          child: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                        size: 50.0,
                      )),
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 32.0),
                  child: Text(
                    "Animal Type",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: DropdownButton<String>(
                    items: type.map((String typevalue) {
                      return new DropdownMenuItem<String>(
                        value: typevalue,
                        child: new Text(typevalue),
                      );
                    }).toList(),
                    onChanged: (typenewvalue) {
                      setState(() {
                        this.initialType = typenewvalue;
                      });
                    },
                    value: initialType,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Species Name",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: speciesName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Leave blank if unknown",
                    fillColor: Colors.white70),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Area",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: area,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Enter location",
                    fillColor: Colors.white70),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 32.0),
                  child: Text(
                    "Dead?",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: DropdownButton<String>(
                    items: _dead.map((String nayavalue) {
                      return new DropdownMenuItem<String>(
                        value: nayavalue,
                        child: new Text(nayavalue),
                      );
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        this.currentItemSelected = newvalue;
                      });
                    },
                    value: currentItemSelected,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "No.of \nanimals",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 4.0),
                  height: 50.0,
                  width: 90.0,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Total no.",
                        fillColor: Colors.white70),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 32.0),
                  child: Text(
                    "Human injury involved or not?",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: DropdownButton<String>(
                    items: injury.map((String injuryvalue) {
                      return new DropdownMenuItem<String>(
                        value: injuryvalue,
                        child: new Text(injuryvalue),
                      );
                    }).toList(),
                    onChanged: (injurynewvalue) {
                      setState(() {
                        this.injuryType = injurynewvalue;
                      });
                    },
                    value: injuryType,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 95.0),
                  child: new InkWell(
                    onTap: () => print('hello'),
                    child: GestureDetector(
                      onTap: () {
                        makeReport(speciesName.text, area.text);
                        Alert(
                          context: context,
                          type: AlertType.success,
                          title: "Thank YOu",
                          desc: "Your response has been sucessfully taken",
                        ).show();
                      },
                      child: new Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.orange,
                          border:
                              new Border.all(color: Colors.white, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Submit',
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
