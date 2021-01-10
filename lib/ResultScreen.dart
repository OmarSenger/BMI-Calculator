import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'model/UserData.dart';

double calculation ;
String x;

class ResultScreen extends StatelessWidget {

  final UserData args;

  const ResultScreen({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00416a),
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your Result',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),),
              Container(
                height:420,
                width: 400,
                margin: EdgeInsets.only(left: 15,right:15,top:15,bottom: 30),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(x,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color:  x =='Over Weight'?Colors.red: Colors.green)),
                      SizedBox(
                        height: 60,
                      ),
                      Text('Age : ${args.age.toStringAsFixed(0)}',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
                      Text('Height : ${args.height.toStringAsFixed(0)}',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
                      Text('Weight : ${args.weight.toStringAsFixed(0)}',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
                      Divider(
                        color: Colors.white,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                      Text('Result : ${calculation.toStringAsFixed(2)}',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: FlatButton(
                  onPressed: (){
                    Phoenix.rebirth(context);
                  },
                  color: Colors.red,
                  minWidth: 350,
                  height: 50,
                  child: Text(
                    'RECALCULATE',style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

