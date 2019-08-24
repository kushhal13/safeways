import 'package:flutter/material.dart';
import 'package:hackathon/myHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Color(value),
          ),
      home: MyHomePage(title: 'safe ways'),
    );
  }
}
