import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regimen/screens/home.dart';
import 'package:regimen/screens/medication.dart';
import 'package:regimen/screens/measurement.dart';
import 'package:regimen/screens/notes.dart';
import 'package:regimen/screens/report.dart';

class mediregimen extends StatefulWidget{
  MediRegimenState createState() => MediRegimenState();
}

class MediRegimenState extends State<mediregimen>{
  int _selectedPage = 0;
  final _pageOptions = [
    home(),
    medication(),
    measurement(),
    notes(),
    report(),
  ];
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      /*appBar: new AppBar( 
      title: new Text(' '),
      backgroundColor: Color(0xffba6b6c), 
      ),*/
      body: Container(
        //padding: EdgeInsets.all(20.0),
        child:_pageOptions[_selectedPage],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
           _selectedPage = index; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Medication'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            title: Text('Measurement'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text('Notes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('Report'),
          ),
        ],
        selectedItemColor: Color(0xffba6b6c),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}