import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class report extends StatefulWidget{
  ReportState createState() => ReportState();
}

class ReportState extends State<report>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar( 
      title: new Text(' '),
      backgroundColor: Color(0xffba6b6c), 
      ),
      body: Container(
        child: Text('Text 2'),
      ),
    );
  }
}