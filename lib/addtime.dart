import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:async/async.dart';

class addtime extends StatefulWidget{
  AddTimeState createState() => AddTimeState();
}
class AddTimeState extends State<addtime>{

  TimeOfDay time = new TimeOfDay.now();
  Future<Null> selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(context: context,
    initialTime: time,
    );

    if (picked != null && picked != time){
      print('${time.toString()}');
      setState((){
        time = picked;
      });
    };
  }
  
  @override
  Widget build(BuildContext context){
    return Container(
        child: new FlatButton(
          child: new Row(
            children: <Widget>[
              new Text('${time.toString()}'),
            ],
          ),
          onPressed: (){selectTime(context);}, 
        ),
      
    );
  }
}