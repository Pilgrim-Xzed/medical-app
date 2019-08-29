import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regimen/adddate.dart';
import 'package:regimen/addtime.dart';

class weight extends StatefulWidget{
  WeightState createState() => WeightState();
}

class WeightState extends State<weight>{

  String _dropdownvalue = 'kg';
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
                  hintText: 'Weight'
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
                  items: <String>["kg", "lb"]
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                      );
                  })
                  .toList(),
                ),
              ),
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