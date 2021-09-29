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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  TextEditingController num3 = new TextEditingController();
  TextEditingController num4 = new TextEditingController();
  String result = '0';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // first input field

            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter 1st dimension',
                      hintText: 'Enter 1st dimension',
                    ),
                    controller: num1,
                  ),
                ),
              ),
            ),

            // second input field
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter 2nd dimension',
                      hintText: 'Enter 2nd dimension',
                    ),
                    controller: num2,
                  ),
                ),
              ),
            ),
            //third input filed
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter 3rd dimension',
                      hintText: 'Enter 3rd dimension',
                    ),
                    controller: num3,
                  ),
                ),
              ),
            ),
            //third input filed
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter density',
                      hintText: 'Enter density',
                    ),
                    controller: num4,
                  ),
                ),
              ),
            ),
            RaisedButton(
              color: Colors.yellow,
              child: Text('Calculate'),
              onPressed: () {
                setState(() {
                  double mult = int.parse(num1.text) *
                      int.parse(num2.text) *
                      int.parse(num3.text) *
                      double.parse(num4.text) /
                      1000000;
                  result = mult.toString();
                });
              },
            ),
            SizedBox(height: 15),
            new Text(
              result,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              "Few Free Icon from Font Awesome Flutter package",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            //brand Icons
            Text(
              "Brand Icons",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            ),
            Container(
              height: 25,
              child: Row(
                children: [
                  Column(),
                  Column(),
                ],
              ),
            ),
            Container(), //Bu //Burada child children kullanım farkı olacak
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.googlePay,
                  color: Colors.deepOrange,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blueAccent,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.aws,
                  color: Colors.deepOrange,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.pinterest,
                  color: Colors.red,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.wordpress,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //Regular Icons
            Text(
              "Regular Icons",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),

            //Regular Icons
            Text(
              "Solid Icons",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.virus,
                  color: Colors.red,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.mask,
                  color: Colors.blue,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.dollarSign,
                  color: Colors.green,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.atom,
                  color: Colors.red,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.truckMonster,
                  color: Colors.black,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.bacterium,
                  color: Colors.red,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.arrowAltCircleRight,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
