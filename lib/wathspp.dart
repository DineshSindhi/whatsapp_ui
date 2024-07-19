import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return WhatsappState();
  }
}
class WhatsappState extends State<Whatsapp>{
  List<Map<dynamic,dynamic>> listWhat=[
    {
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX4BymD26ur6LHeO2WjPGLuPkrSf12lGhT2zUsCp4KykCN5ZniUEhvCw7QaFCYQgBsCk&usqp=CAU'),
      'name': 'Yogesh',
      'mess': 'Hi',
      'date': '11:32am',
      'mac': '2'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW29THyAvjHmKA8sN14F6eTbT1KkTaIFF8SxwgsMcvlQ&s'),
      'name': 'Raj',
      'mess': 'ok',
      'date': '12:10am',
      'mac': '10'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThjMLhnISVIk3Mhkuind6jgufZhDMPehjPGWQCABz2JaZcyYwSWyVgLTRknHM0hwCtXCI&usqp=CAU'),
      'name': 'Rakesh',
      'mess': 'nhi',
      'date': '1/12/24',
      'mac': '22'
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1K68QF717KgWu76vmBt8MkubOA7QV-dfmGBnNh03YSM3LXx3prK5mNh28OVbjnvyeQuA&usqp=CAU'),
      'name': 'Raju',
      'mess': 'Hi',
      'date': '2/12/24',
      'mac': '1'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW29THyAvjHmKA8sN14F6eTbT1KkTaIFF8SxwgsMcvlQ&s'),
      'name': 'Khalash',
      'mess': 'baad me',
      'date': '3/12/24',
      'mac': '4'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREZNQ6Pte02JNcAfeti0b-oiumHtdNOkXQrCZp7bfQYuxe44LbbaIN0MccovXN04stLDg&usqp=CAU'),
      'name': 'jesh',
      'mess': 'ha ok',
      'date': '12/2/24',
      'mac': '1'
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkfF6nBhidhIzL330CYtg70I8tpDBGJ2YjBPnE9D9gY0iLmGu563WBIab4KBexSDv7kG8&usqp=CAU'),
      'name': 'Bheru',
      'mess': 'Hee',
      'date': '12/12/24',
      'mac': '2'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd14Txv031zmnOdB79hQpF03Vih_bR3e3ccvgiRQWe-_UUkV1cBMychdcfU1602SpaDe4&usqp=CAU'),
      'name': 'Ramesh',
      'mess': 'Hi',
      'date': '4/12/24',
      'mac': '1'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThjMLhnISVIk3Mhkuind6jgufZhDMPehjPGWQCABz2JaZcyYwSWyVgLTRknHM0hwCtXCI&usqp=CAU'),
      'name': 'jack',
      'mess': 'na na',
      'date': '12/12/24',
      'mac': '1'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLTfamKfxvPPPCcni48W2Q-VghhvjG7-GywGIsk4AHbJCAy8XoSaXxvf2TgB9fncNK03w&usqp=CAU'),
      'name': 'harsh',
      'mess': 'Hii',
      'date': '12/12/24',
      'mac': '1'
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX4BymD26ur6LHeO2WjPGLuPkrSf12lGhT2zUsCp4KykCN5ZniUEhvCw7QaFCYQgBsCk&usqp=CAU'),
      'name': 'Raj',
      'mess': 'Hi',
      'date': '12/12/34',
      'mac': '3'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW29THyAvjHmKA8sN14F6eTbT1KkTaIFF8SxwgsMcvlQ&s'),
      'name': 'hardy',
      'mess': 'Hi',
      'date': '12/12/34',
      'mac': '6'
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThjMLhnISVIk3Mhkuind6jgufZhDMPehjPGWQCABz2JaZcyYwSWyVgLTRknHM0hwCtXCI&usqp=CAU'),
      'name': 'kk',
      'mess': 'Hi',
      'date': '12/12/34',
      'mac': '6'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
        backgroundColor: Colors.tealAccent.shade700,
      ),
      body: Stack(
        children: [ListView.builder(
          itemCount: listWhat.length,itemBuilder: (context, i) =>
            ListTile(
              leading: CircleAvatar(
                backgroundImage: listWhat[i]['Image'],
              ),
              title: Text(listWhat[i]['name'],style: TextStyle(fontSize: 20)),
              subtitle: Text(listWhat[i]['mess'],style: TextStyle(fontSize: 20)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(listWhat[i]['date'],style: TextStyle(fontSize: 14)),
                   Container(
                     width: 23,
                     height: 23,
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                       color: Colors.green
                   ),
                      child: Center(child: Text('${listWhat[i]['mac']}',style: TextStyle(fontSize: 14)),),)

                ],
              ),


            ),
        ),
          Positioned(
            bottom: 20,
              right: 12,
              child
              : ElevatedButton(onPressed: (){}, child: Icon(Icons.message_rounded,color: Colors.white,),style: ElevatedButton.styleFrom(
                  shape:  ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(40, 20))),
                  backgroundColor: Colors.tealAccent.shade700,foregroundColor: Colors.black,
                  fixedSize: Size(40, 50),textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)))
          )
      ]
      ),
    );

  }
}