import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class medication extends StatefulWidget{
  MedState createState() => MedState();
}

class MedState extends State<medication>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar( 
      title: new Text('Medication'),
      backgroundColor: Color(0xffba6b6c),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.delete),
        onPressed: (){},),
        FlatButton.icon(label: Text('Add', style: TextStyle(color: Colors.white, fontSize: 20.0),),
        icon: Icon(Icons.add, color: Colors.white,),
        onPressed: (){ },
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),)
      ], 
      ),
      body: Container(
        child: Text('Text 2'),
      ),
    );
  }
}