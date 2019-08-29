import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:async/async.dart';

class adddate extends StatefulWidget{
  AddDateState createState() => AddDateState();
}
class AddDateState extends State<adddate>{

  DateTime date = new DateTime.now();
  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
    initialDate: date,
    firstDate: new DateTime(2019),
    lastDate: new DateTime(2029),

    );

    if (picked != null && picked != date){
      print('${date.toString()}');
      setState((){
        date = picked;
      });
    };
  }
  

  @override
  Widget build(BuildContext context){
    return Container(
        child: new FlatButton(
          child: new Row(
            children: <Widget>[
              new Text('${date.toString()}'),
            ],
          ),
          onPressed: (){selectDate(context);}, 
        ),
      
    );
  }
}