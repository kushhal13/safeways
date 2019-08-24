import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  var _dead = ["Yes", "Injured"];
  var currentItemSelected = "Yes";
// // Changes the selected value on 'onChanged' click on each radio button
//   setSelectedRadio(int val) {
//     setState(() {
//       selectedRadio = val;
//     });
//   }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register page"),
      ),
      body: Column(
        children: <Widget>[
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  fillColor: Colors.white70),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
                child: Text(
                  "No.of animals",
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
                  "Dead?",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
