import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class measurement extends StatefulWidget{
  MeasureState createState() => MeasureState();
}

class MeasureState extends State<measurement>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Measurements'),
        backgroundColor: Color(0xffba6b6c),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.view_list),
            onPressed: (){ },
          ),
      ],
      ),
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(child: FlatButton(
            child: Text('Blood Pressure'),
            onPressed: (){Navigator.of(context).pushNamed('/bloodpressure'); },
          ),),
          FlatButton(
            child: Text('Blood Sugar'),
            onPressed: (){Navigator.of(context).pushNamed('/bloodsugar'); },
          ),
          FlatButton(
            child: Text('Pulse'),
            onPressed: (){ },
          ),
          FlatButton(
            child: Text('Temperature'),
            onPressed: (){Navigator.of(context).pushNamed('/temperature'); },
          ),
          FlatButton(
            child: Text('Weight'),
            onPressed: (){Navigator.of(context).pushNamed('/weight'); },
          ),
        ],
      ),
      ),
    );
  }
}