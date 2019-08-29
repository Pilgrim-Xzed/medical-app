import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regimen/adddate.dart';
//import 'package:regimen/radio.dart';

enum days {MON, TUE, WED, THURS, FRI, SAT, SUN}
class addmed extends StatefulWidget{
  AddMedState createState() => AddMedState();
}
class AddMedState extends State<addmed>{

  String dropdownvalue = "Once daily";
  String selected = "Every day";
  List<String> itemlist = ['Every day', 'Specific days of the week'];
  String answer = '';
  bool _isChecked = false;
  bool _monval = false;
  //int iteration = 0;
  /*List<String> values = new List<String>();

  @override
  void InitState(){
    values.addAll(["Once daily", "Twice daily", "Three times daily",
     "Every 6 hours", "Every 4 hours", "Every 3 hours", "Every 2 hours", "Every hour"]);
     dropdownvalue = values.elementAt(0);
  }

  void onaddtime(String dvalue){
    setState((){
      dropdownvalue = newvalue;
    });*
    switch(dropdownvalue){
      case 'Once daily': 
        iteration = 1;
        break;
      case 'Twice daily': 
        iteration = 2;
        break;
      case 'Three times daily': 
        iteration = 3;
        break;
      case 'Every 6 hours': 
        iteration = 4;
        break;
      case 'Every 4 hours': 
        iteration = 6;
        break;
      case 'Every 2 hours': 
        iteration = 12;
        break;
      case 'Every hour':
        iteration = 24;
        break;
    };
    for(int i = 1; i<= iteration; i++){
      addtime();
    }
  }*/

  

  void _dialogResult(String val){
    if (val == 'quit'){
      Navigator.of(context).pushNamed('/home');
  }else{
      Navigator.of(context).pop();
  };
  }

  void showAlertDialog(){
    AlertDialog dialog = new AlertDialog(
      content: new Text('Sweetie, are you sure to want to discard unsaved changes?'),
      //style: new TextStyle(fontSize: 30.0,),
      actions: <Widget>[
        new FlatButton(onPressed:() { _dialogResult('quit');} , child: new Text("Quit"),),
        new FlatButton(onPressed:() { _dialogResult('no');} , child: new Text("No"),),
      ],
    );
    showDialog<void>(context: context, child: dialog, barrierDismissible: false,);
  }

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

  List<Widget> makeradios(List<String> elemlist){
    List<Widget> list = new List<Widget>();

      list.add(new RadioListTile(
        onChanged: (String value){ onChangedradio(value);},
        value:elemlist.elementAt(0),
        title: new Text(elemlist.elementAt(0)),
        groupValue:selected ,
        ),
    );
      list.add(new RadioListTile(
        onChanged: (String value){ onChangedradio(value);
        _askdays();},
        value:elemlist.elementAt(1),
        title: new Text(elemlist.elementAt(1)),
        groupValue:selected ,
        ),
      );
    
    return list;
  }
  void onChangedradio(String value){
    setState((){
      selected = value;
    });
  }
  void setAnswer(String dialogvalue){
    setState((){
      answer = dialogvalue;
    });
  }
  Future<void> _askdays() async {
    //days dialog
    switch (await showDialog<days>(context: context, child: new SimpleDialog(
      title: new Text('Select days'),
      children: <Widget>[
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('MON'),
        value:_monval, onChanged:(bool value){setState((){_monval = value;}); },),
          onPressed: (){ Navigator.pop(context, days.MON);},),
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('TUE'),
        value:_isChecked, onChanged:(bool value){setState((){_isChecked = value;}); },),
         onPressed: (){ Navigator.pop(context, days.TUE);},),
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('WED'),
        value:_isChecked, onChanged:(bool value){setState((){_isChecked = value;}); },),
         onPressed: (){ Navigator.pop(context, days.WED);},),
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('THURS'),
        value:_isChecked, onChanged:(bool value){setState((){_isChecked = value;}); },),
         onPressed: (){ Navigator.pop(context, days.THURS);},),
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('FRI'),
        value:_isChecked, onChanged:(bool value){setState((){_isChecked = value;}); },),
         onPressed: (){ Navigator.pop(context, days.FRI);},),
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('SAT'),
        value:_isChecked, onChanged:(bool value){setState((){_isChecked = value;}); },),
         onPressed: (){ Navigator.pop(context, days.SAT);},),
        new SimpleDialogOption(child: CheckboxListTile(controlAffinity: ListTileControlAffinity.leading, title: const Text('SUN'),
        value:_isChecked, onChanged:(bool value){setState((){_isChecked = value;}); },),
         onPressed: (){ Navigator.pop(context, days.SUN);},),
      ],
    ),
    )){
      case days.MON: setAnswer('mon');
      break;
      case days.TUE: setAnswer('tue');
      break;
      case days.WED: setAnswer('wed');
      break;
      case days.THURS: setAnswer('thurs');
      break;
      case days.FRI: setAnswer('fri');
      break;
      case days.SAT: setAnswer('sat');
      break;
      case days.SUN: setAnswer('sun');
      break;
    }
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(leading: new IconButton(icon: new Icon(Icons.close), onPressed: (){ showAlertDialog(); } ), 
      title: new Text('Add Medication'),
      backgroundColor: Color(0xffba6b6c), 
      ),
      body: SingleChildScrollView(child: new Container(
        decoration: BoxDecoration(color: Color(0xffcccccc)),
        padding: EdgeInsets.all(20.0),
        child: new Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
              new Text('Medication Name', style: TextStyle(fontSize: 20.0,),),
              new TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Add medication/ treatment',
              ),
            ),
            ],
            ),
          ),
          new SizedBox(
            height: 12.0,
          ),
          Card(child: Padding(padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              new Center(child:
                new Text('Reminder', style: TextStyle(fontSize: 20.0,),),
              ),
               new TextField(
                decoration: InputDecoration(
                filled: true,
                hintText: 'Dosage',
              ),
              ),
              Row(children: <Widget>[
                Expanded(
                child: DropdownButton<String>(
                value: dropdownvalue,
                onChanged: (String newvalue) {
                  setState(() {
                    dropdownvalue = newvalue;
                  //sonaddtime(dropdownvalue);
                });
                },
                items: <String>["Once daily", "Twice daily", "Three times daily" ,"Every 6 hours", "Every 4 hours", "Every 3 hours", "Every 2 hours", "Every hour"]
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                    );
                })
                .toList(),
              ),)
              ]),
              
                new FlatButton.icon(
                  icon: Icon(Icons.alarm),
                  label: new Text("Set Reminder time"),
                  //child: new Text(Icon(Icons.alarm).("Add reminder Time")),
                   onPressed: () {selectTime(context); } ,
                ),
            ],
            ),)
      ),
          Card(
            child: Padding(padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //padding: EdgeInsets.all(10.0),
              children: <Widget>[
                new Center(child:
                  new Text('Schedule', style: TextStyle(fontSize: 20.0,),),
                ),
                new Row(
                  children: <Widget>[
                    new Text('Start date:', textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0,),),
                    adddate(),
                  ],
                ),
                Divider(height: 12.0),
                new Text('Days', textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0,),),
                Column(
                  children: makeradios(itemlist),)
                //addradio(['Every day', 'Selected days of the week']),
              ],
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
                child: new Text('Cancel', style: TextStyle(fontSize: 15.0,),),
                onPressed: (){ },
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                color: Color(0xffba6b6c),
                child: new Text('Done', style: TextStyle(fontSize: 15.0,),),
                onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/mediregimen', (Route<dynamic> route) => false); },
              ),
            ],
          ),
        ],
    )
    ,),
    ),
    resizeToAvoidBottomInset: false,
    );
  } 
}