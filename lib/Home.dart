import 'package:flutter/material.dart';
import 'components/customTextFormField.dart';
import 'package:test_app/Home.dart';

class Home extends StatefulWidget {
  final String phone;
  final String userid;
  Home(this.phone, this.userid);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int unitsConsumed;
  int payment;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.translate), //add_alert
              tooltip: 'Translate',
              onPressed: () {},
            ),
          ],
        ),
        body: Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * 0.2,
          ),
          new Card(
            child: new Padding(
              padding: new EdgeInsets.all(12.0),
              child: Text(
                "This will be the Home screen.",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
          ),
        ]));
  }
}
