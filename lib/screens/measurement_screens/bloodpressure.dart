import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regimen/adddate.dart';
import 'package:regimen/addtime.dart';

class bloodpressure extends StatefulWidget{
  BpState createState() => BpState();
}

class BpState extends State<bloodpressure>{

  String _dropdownvalue = 'mmHg';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Blood Pressure'),
        backgroundColor: Color(0xffba6b6c),
        actions: <Widget>[
        IconButton(icon: Icon(Icons.check),
        onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil('/mediregimen',
        (Route<dynamic> route) => false);},
        )
      ],),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
                child: Icon(Icons.timeline),),
              Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: 'Sys (high)'
                ),
              ),
              ),
              Text('/'),
              Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: 'Dia (low)'
                ),
              ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                value: _dropdownvalue,
                onChanged: (String newvalue) {
                  setState(() {
                    _dropdownvalue = newvalue;
                  //sonaddtime(dropdownvalue);
                });
                },
                items: <String>["mmHg"]
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                    );
                })
                .toList(),
              ),
              )
            ],
          ),
          
          FlatButton(
            child: Row(
              children: <Widget>[
              Icon(Icons.date_range),
              adddate()]),
            onPressed: (){adddate();},
          ),
          FlatButton(
            child: Row(
              children: <Widget>[
                Icon(Icons.timer),
                addtime()]),
            onPressed: (){addtime();},
          ),
        ],
      ),
      )
    );
  }
}