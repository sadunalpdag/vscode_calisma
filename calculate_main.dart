// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color;
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculate weight of a plate"),
        backgroundColor: Colors.teal[900],
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {})
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 5,
          spacing: 5,
          children: <Widget>[
            Row(
              //ROW 1
              children: [
                Container(
                  height: 20,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                //ROW 1
                children: [
                  Container(
                    margin: EdgeInsets.all(15.0),
                    width: 120.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          scale: 0.8,
                          image: NetworkImage('assets/rect.jpg')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.redAccent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25.0),
                    child: Text(
                      "Plate",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(//ROW 2
                  children: [
                Container(
                  margin: EdgeInsets.all(15.0),
                  width: 120.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        scale: 0.8,
                        image: NetworkImage('assets/round.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    "Bar",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(// ROW 3
                  children: [
                Container(
                  margin: EdgeInsets.all(15.0),
                  width: 120.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        scale: 0.8,
                        image: NetworkImage('assets/tubular.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25.0),
                  child: Text(
                    "Pipe",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ),
          ]),
    );
  }
}
