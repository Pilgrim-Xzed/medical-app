import 'package:flutter/material.dart';

class index extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/resident.jpg',),
              ),
              ),    
            ),
            Container(
              //height: 350.0,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [Colors.grey.withOpacity(0.0), Colors.pinkAccent,],
                ),
              ),
              child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(20.0),
                 child: new Text('Take action into your own hand by taking control of your meds. Follow your regimen with this easy step only one click away',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),),
                  ),
                  new SizedBox(
                    width: 200.0,
                    child: new RaisedButton(
                    color: Colors.white,
                    child: new Text('Click to continue...', style: TextStyle(color: Colors.pinkAccent),),
                    onPressed: (){ Navigator.of(context).pushNamed('/login'); },
                  )
                  ), 
             ],
          ),
            ),
          ],
        ),
    );
  }
}