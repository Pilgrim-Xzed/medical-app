import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget{
  HomeState createState() => HomeState();
}

class HomeState extends State<home>{
  List<String> timedetail = <String>["12:00", "15:00", "18:00", "22:00"];
  List<String> medicationName = <String>['paracetamol', 'sabutamol', 'omeprazol', 'lyrica'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar( 
      title: new Text(' '),
      backgroundColor: Color(0xffba6b6c), 
      ),
      body: Container(
          child: ListView.builder(
              itemCount: medicationName.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width:2000.0,
                          decoration: BoxDecoration(
                            color: Color(0xffccb9bc),//56c8d8),
                          ),
                          child: Center(
                            child: Text('${timedetail[index]}'),)
                        ),
                        Container(
                          child: Text('${medicationName[index]}'),)
                      ],
                    ),
                  ),
                );
              },
            ),
      ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffff8a80),
            elevation: 10.0,
            child: Icon(Icons.add),
            onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/med',
             (Route<dynamic> route) => false); },
          ),
    );
  }
}