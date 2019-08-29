import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/curl.jpg',),
              ),
              ),
            ),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [Color.fromRGBO(255, 205, 210, 0.0), Colors.pinkAccent, ],
                ),
              ),
            ),
          Align(
            alignment: Alignment.center,
            child: Container(
              /*width:500.0,
              height: 300.0,
              
              margin: EdgeInsets.all(32.0),*/
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.white.withOpacity(0.0),
              ),
              padding: EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                  decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
                  SizedBox(height: 12.0,),
                  TextField(
                  decoration: InputDecoration(filled: true, 
                  labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30.0,),
                new SizedBox(
                    width: 300.0,
                    height: 40.0,
                    child: new RaisedButton(
                    color: Colors.white,
                    child: new Text('SIGN IN', style: TextStyle(color: Colors.pinkAccent),),
                    onPressed: (){ Navigator.of(context).pushNamed('/med'); },
                  )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}