import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class notes extends StatefulWidget{
  NoteState createState() => NoteState();
}

class NoteState extends State<notes>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar( 
      title: new Text(' '),
      backgroundColor: Color(0xffba6b6c), 
      ),
      body: Container(
        child: /*ListView.builder(
          
        )*/ Text('working'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xffff8a80), //Color(0xff0094cc),
        icon: Icon(Icons.mode_edit),
        label: Text('Add note'),
        clipBehavior: Clip.none,
        onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/addnote',
         (Route<dynamic> route) => false);  },
      ),
    );
  }
}