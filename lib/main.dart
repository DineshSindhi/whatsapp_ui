import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pages/status.dart';
import 'package:pages/tip_calculator.dart';
import 'package:pages/wathspp.dart';
import 'package:pages/whatsappcall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Whatsapp(),
    );
  }
}
class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}
class  HomePage extends State<MyHomePage>{
  TextEditingController weController =TextEditingController();
  TextEditingController eController =TextEditingController();
  TextEditingController hiController =TextEditingController();
  String mImages="";

  dynamic result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Page'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: Colors.orange.shade100,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: weController,
                decoration: InputDecoration(
                  label: Text('Enter your weight'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: eController,
                decoration: InputDecoration(
                  label: Text('height in feets'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: hiController,
                decoration: InputDecoration(
                  label: Text('height in inch'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              if(weController.text.isNotEmpty&&eController.text.isNotEmpty&&hiController.text.isNotEmpty) {
                int no1 = int.parse(weController.text);
                int no2 = int.parse(eController.text);
                int no3 = int.parse(hiController.text);
                num sum=0;
                num cm=(no2*12)+no3;
                num met=cm*2.54;
                num height=met/100;
                sum= no1/pow(height, 2);
                if(sum>25){
                  result= 'BMI is ${sum.toStringAsFixed(2)}\n''High';
                  mImages='assets/images/we.png';
                } else if(sum<18){
                  result= 'BMI is ${sum.toStringAsFixed(2)}\nlow';
                  mImages='assets/images/patla.png';
                }else{
                  result = 'BMI is ${sum.toStringAsFixed(2)}\nperfect';
                  mImages='assets/images/fit.png';

                }
                setState(() {

                });

              }else{
                setState(() {
                  result= 'Please fill the blanks';
                  mImages="";
                });
              }
            }, child: Text('BMI')),
            Text(result,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            mImages!="" ? Image.asset(mImages,height: 100,width: 100,):Container()
          ],
        ),
      ),
    );

  }
}

