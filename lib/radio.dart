import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

String selected;

class Myradio extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){
    return Container(
      child:
        addradio([]),
       
    );
  }
}

class addradio extends StatefulWidget{
  AddRadioState createState() => AddRadioState();
  List<String> list;
  addradio(this.list);

  String item(List<String> _list){
    selected = list[0];
  return selected;
  }
  
}

class AddRadioState extends State<addradio>{
 
  void onChanged(String value){
    setState((){
      selected = value;
    });
  }

  List<Widget> makeradios(){
    List<Widget> list = new List<Widget>();

    for(int i=0; i<=list.length; i++){
      list.add(new RadioListTile(
        onChanged: (String value){ onChanged(value);},
        value:list[i].toString(),
        title: new Text(list[i].toString()),
        groupValue:selected ,
        ),

    );
    }
    return list;
  }
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        addradio([]),
      ] 
    );
  }
}

