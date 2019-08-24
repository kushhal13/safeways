import 'package:flutter/material.dart';

class ReportKillPage extends StatefulWidget {
  @override
  _ReportKillPageState createState() => _ReportKillPageState();
}

class _ReportKillPageState extends State<ReportKillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
          height: 250,
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: ClippingClass(),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfff2994a),
                        Color(0xfff2C94C),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 20.0,
                        top: 50.0,
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 90.0,
                        child: Center(
                            child: Text(
                          "",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 16.0),
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2.0, 10.0),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text("search Furniture")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
