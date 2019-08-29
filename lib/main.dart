import 'package:flutter/material.dart';
import 'package:regimen/screens/addmed.dart';
import 'package:regimen/addnote.dart';
import 'package:regimen/screens/index.dart';
import 'package:regimen/screens/login.dart';
import 'package:regimen/screens/mediregimen.dart';
import 'package:regimen/screens/notes.dart';
import 'package:regimen/screens/measurement_screens/bloodsugar.dart';
import 'package:regimen/screens/measurement_screens/bloodpressure.dart';
import 'package:regimen/screens/measurement_screens/temperature.dart';
import 'package:regimen/screens/measurement_screens/weight.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Regimen',
      routes: <String,WidgetBuilder>{
        '/index': (BuildContext context) => new index(),
        '/login': (BuildContext context) => new login(),
        '/med': (BuildContext context) => new addmed(),
        '/mediregimen': (BuildContext context) => new mediregimen(),
        '/addnote': (BuildContext context) => new addnote(),
        '/note': (BuildContext context) => new notes(),
        '/bloodpressure': (BuildContext context) => new bloodpressure(),
        '/bloodsugar': (BuildContext context) => new bloodsugar(),
        '/temperature': (BuildContext context) => new temperature(),
        '/weight': (BuildContext context) => new weight(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new index(),
        
         /*Container(
          decoration: BoxDecoration(
              gradient: new LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [const Color.fromRGBO(100, 181, 246, 0.4), const Color.fromRGBO(34, 134, 195, 0.8)],
              //tileMode: TileMode.repeated,
            ),
            image: DecorationImage(
              image: AssetImage("assets/img/doc.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(20.0),
                 child: new Text('Take action into your own hand by taking control of your meds. Follow your regimen with this easy step only one click away',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),),
                  ),
                 new RaisedButton(
                 color: Colors.lightBlueAccent,
                 textTheme: ButtonTextTheme.normal,
                 child: new Text('Click to continue...'),
                 onPressed: null,
               )
             ],
          ),
        ),*/
    );
  }
}