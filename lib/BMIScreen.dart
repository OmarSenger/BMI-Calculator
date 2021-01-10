import 'package:Gym/ResultScreen.dart';
import 'package:flutter/material.dart';

import 'model/UserData.dart';

double calculation ;

class BMIScreen extends StatefulWidget {
  BMIScreen({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  double _counter =0;
  int _age =0;
  double _value =0;

  _setValue(double value) => setState(() => _value = value);
  _setCounter(double counter) => setState(() => _counter = counter);
  _setAge(int age) => setState(() => _age = age);

  void _incrementAge() {
    setState(() {
      _age++;
      if (_age>100){
        _age=100;
      }
    });
  }
  void _incrementWeight() {
    setState(() {
      _counter++;
      if (_counter>200){
        _counter=200;
      }
    });
  }

  Color _iconColor = Colors.white;
  Color _iconColor2 = Colors.white;

  void _decAge() {
    setState(() {
      _age--;
      if(_age<0)
        _age=0;
    });
  }

  void _decWeight() {
    setState(() {
      _counter--;
      if(_counter<0)
        _counter=0;
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF00416a),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 610,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(child:Padding(
                    padding: EdgeInsets.all(13),
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                          if(_iconColor2==Colors.red){
                            _iconColor2 = Colors.white;
                            _iconColor = Colors.red;
                          }else {
                            _iconColor = Colors.red;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        height: 120,
                        child: Column(
                          children: [
                            Padding(padding:EdgeInsets.all(10) ),
                            Icon(Icons.account_circle_rounded, color: _iconColor,size: 60),
                            Text('Male',style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(13),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          if(_iconColor==Colors.red){
                            _iconColor = Colors.white;
                            _iconColor2 = Colors.red;
                          }else {
                            _iconColor2 = Colors.red;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        height: 120,
                        child: Column(
                          children: [
                            Padding(padding:EdgeInsets.all(10) ),
                            Icon(Icons.account_circle_rounded, color: _iconColor2,size: 60),
                            Text('Female',style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ),
                  ),
                ],
              ),
              Expanded(child: Container(
                width : 400,
                margin: EdgeInsets.only(left:15,right: 15,bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child:Column(
                  children: [
                    Expanded(child:Padding(
                      padding: EdgeInsets.only(top:5),
                      child:Text('Height',style:TextStyle(color: Colors.white,fontSize: 20)),
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(_value.toStringAsFixed(0),style: TextStyle(color: Colors.white,fontSize: 50)),
                        Text('cm',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ],
                    ),
                    Slider(
                      value:_value,
                      min: 0,
                      max: 200,
                      divisions: 200,
                      activeColor: Colors.blue.shade700,
                      inactiveColor: Colors.white,
                      onChanged: _setValue,
                    ),
                  ],
                ),
              ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container(
                      height: 200,
                      margin: EdgeInsets.only(left:15,right:15,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text('Weight',style: TextStyle(color: Colors.white,fontSize: 15)),
                            Text(_counter.toStringAsFixed(0),style: TextStyle(color: Colors.white,fontSize: 50)),
                            Slider(
                              value:_counter,
                              min: 0,
                              max: 200,
                              divisions: 200,
                              activeColor: Colors.blue.shade700,
                              inactiveColor: Colors.white,
                              onChanged: _setCounter,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                    onTap: (){
                                      _decWeight();
                                    },
                                    child: Text('-',style: TextStyle(color:Colors.white,fontSize: 28))
                                ),

                                GestureDetector(
                                    onTap: (){
                                      _incrementWeight();
                                    },
                                    child: Text('+',style: TextStyle(color:Colors.white,fontSize: 28),)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                    Expanded(child: Container(
                      height: 200,
                      margin: EdgeInsets.only(left:15,right:15,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Padding (
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text('Age',style: TextStyle(color: Colors.white,fontSize: 15)),
                            Text(_age.toStringAsFixed(0),style: TextStyle(color: Colors.white,fontSize: 50)),
                            Slider(
                              value:_age.toDouble(),
                              min: 0,
                              max: 100,
                              divisions: 100,
                              activeColor: Colors.blue.shade700,
                              inactiveColor: Colors.white,
                              onChanged:(value){
                                _setAge(value.toInt());
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                    onTap: (){
                                      _decAge();
                                    },
                                    child: Text('-',style: TextStyle(color:Colors.white,fontSize: 28))
                                ),

                                GestureDetector(
                                    onTap: (){
                                      _incrementAge();
                                    },
                                    child: Text('+',style: TextStyle(color:Colors.white,fontSize: 28),)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 14),
                child: FlatButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => ResultScreen(args:UserData(age:_age,weight:_counter,height:_value))),
                    );
                    setState(() {
                      calculation = _counter / (_value/100*_value/100);
                      if (calculation >= 25.0){
                        x = 'Over Weight';
                      }else if (calculation <25.0&& calculation!=0){
                        x= 'Normal Weight';
                      }else {
                        x='Invalid inputs';
                        calculation =0;
                      }
                      print(calculation);
                    });
                    initState();
                  },
                  color: Colors.red,
                  minWidth: 350,
                  height: 50,
                  child: Text(
                    'CALCULATE',style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

