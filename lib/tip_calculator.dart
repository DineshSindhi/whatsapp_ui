

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipCal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MyPageState();
  }
}
class MyPageState extends State<TipCal>{
  var billController=TextEditingController();
  int OpreterChoice=0;
  int sum=1;
  num result1=0;
  num result2=0;
  num result3=0;
  String result4='';
  bool isCustom=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Tip'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/hat.png',width: 90,),
                Text('Mr\n' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500), ),
                Text('Tip\n',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                Text('Calculator' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
              ],
            ),
            Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    Text('Total p/person',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                        Text('${result1.toStringAsFixed(0)}',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),),
                      ],
                    ),
                    Container(
                      color: Colors.grey,
                      width: 380,
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22,top: 22,right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total bill',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                          Text('Total tip',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 22,right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('\$',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                              Text('$result3',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('  \$',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                              Text('$result2',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text('Enter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text('Your bill',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 12,),
                    child: SizedBox(
                      width: 315,
                      child: TextField(
                        controller: billController,
                        decoration: InputDecoration(
                            prefixText: '\$',
                            prefixStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
        
                children: [
                   Column(
                     children: [
                       Text('Choose', style: TextStyle(
                           fontSize: 20, fontWeight: FontWeight.w500),),
                       Text('Your tip', style: TextStyle(
                           fontSize: 20, fontWeight: FontWeight.w500),),
                     ],
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 24),
                     child: ElevatedButton(onPressed: () {
                       OpreterChoice = 1;
                     }, child: Text('10%')
                       , style: ElevatedButton.styleFrom(
                           shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.elliptical(
                                   5, 5))),
                           backgroundColor: Colors.tealAccent.shade400,
                           foregroundColor: Colors.white,
                           fixedSize: Size(90, 50),
                           textStyle: TextStyle(
                               fontSize: 22, fontWeight: FontWeight.bold)),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 25),
                     child: ElevatedButton(onPressed: () {
                       OpreterChoice = 2;
                     }, child: Text('15%')
                       , style: ElevatedButton.styleFrom(
                           shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.elliptical(
                                   5, 5))),
                           backgroundColor: Colors.tealAccent.shade400,
                           foregroundColor: Colors.white,
                           fixedSize: Size(90, 50),
                           textStyle: TextStyle(
                               fontSize: 22, fontWeight: FontWeight.bold)),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 25),
                     child: ElevatedButton(onPressed: () {
                       OpreterChoice = 3;
                     }, child: Text('20%')
                       , style: ElevatedButton.styleFrom(
                           shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.elliptical(
                                   5, 5))),
                           backgroundColor: Colors.tealAccent.shade400,
                           foregroundColor: Colors.white,
                           fixedSize: Size(90, 50),
                           textStyle: TextStyle(
                               fontSize: 22, fontWeight: FontWeight.bold)),
                     ),
                   ),
                 ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 25,left: 85),
              child:
              Stack(
                children: [
                SizedBox(
                  width: 315,
                  height: 50,
                  child: TextField(
                  controller: billController,
                  decoration: InputDecoration(
                      prefixText: '\$',
                      prefixStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                                ),
                ),
                  isCustom ? Container() :
                  ElevatedButton(onPressed: (){
                    isCustom=true;
                    setState(() {
                    });
                  }, child: Text('Custom tip'),style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                      backgroundColor: Colors.tealAccent.shade400,foregroundColor: Colors.white,
                      fixedSize: Size(330, 50),textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Enter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text('Your bill',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(sum>1){
                        sum--;}
                      });
                    }, child: Text('-')
                      ,style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(5, 5),topLeft: Radius.elliptical(5, 5))),
                          backgroundColor: Colors.tealAccent.shade400,foregroundColor: Colors.white,
                          fixedSize: Size(90, 50),textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                  }, child: Text('$sum')
                    ,style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.white,foregroundColor: Colors.black,
                        fixedSize: Size(90, 50),textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(onPressed: (){
        
                    setState(() {
                      sum++;
                    });
                  }, child: Text('+')
                    ,style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(5, 5),topRight: Radius.elliptical(5, 5))),
                        backgroundColor: Colors.tealAccent.shade400,foregroundColor: Colors.white,
                        fixedSize: Size(90, 50),textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 85,top: 20),
              child: ElevatedButton(onPressed: (){
                if(billController.text.isNotEmpty){
                  int p1=int.parse(billController.text);
                  if(OpreterChoice==1){
                    result2=p1*10/100;
                  }else if(OpreterChoice==2){
                    result2=p1*15/100;
                  }else if(OpreterChoice==3){
                    result2=p1*20/100;
                    setState(() {
                    });
                  }else{
                    setState(() {
                      result4=='Chose Opreter';
                    });
                  }
                  result3=p1+result2;
                  result1=(result3/sum);
                  setState(() {
        
                  });
        
                }else{
                  if(billController.text.isEmpty) {
                    result4 = 'Enter Bill';
                  }else{
                  }
                  setState(() {});
                }
              }, child: Text('Calculate',),style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
               backgroundColor: Colors.tealAccent.shade400,foregroundColor: Colors.white,
              fixedSize: Size(200, 50),textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
               ),
            ),
            Text(result4,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        
          ],
        ),
      ),
    );
  }
}