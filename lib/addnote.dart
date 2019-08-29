import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regimen/adddate.dart';


class addnote extends StatefulWidget{
  AddNoteState createState() => AddNoteState();
}

class AddNoteState extends State<addnote>{

  void showAlertDialog(){
    AlertDialog dialog = new AlertDialog(
      content: new Text('You have unsaved changes. Do you want to quit without saving'),
      //style: new TextStyle(fontSize: 30.0,),
      actions: <Widget>[
        new FlatButton(onPressed:() { _dialogResult('Cancel');} , child: new Text("Cancel"),),
        new FlatButton(onPressed:() { _dialogResult('Quit');} , child: new Text("Quit"),),
      ],
    );
    showDialog<void>(context: context, child: dialog, barrierDismissible: false,);
  }
  void _dialogResult(String val){
    if (val == 'Quit'){
      Navigator.of(context).pushNamedAndRemoveUntil('/note',
      (Route<dynamic> route) => false);
  }else{
      Navigator.of(context).pop();
  };
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.close), onPressed: (){ showAlertDialog(); } ), 
      title: Text('Add Notes Entry'),
      actions: <Widget>[
        FlatButton(
          child: Text('Done', style: TextStyle(fontSize: 23.0, color: Colors.white)),
          onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil('/mediregimen',
          (Route<dynamic> route) => false);},
        ),
      ],
      backgroundColor: Color(0xffba6b6c),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            maxLines: 5,
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Diary Entry',)
          ),
          FlatButton(
            child: Row(
              children: <Widget>[
                Icon(Icons.timer),
                adddate(),
              ]),
            onPressed: (){ adddate();},
          )
        ],
      ),
    );
  }
}
