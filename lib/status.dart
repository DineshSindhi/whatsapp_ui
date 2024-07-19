
import 'package:flutter/material.dart';

class Whatsappst extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WhatsappState();
  }
}
class WhatsappState extends State<Whatsappst>{
  List<Map<dynamic,dynamic>> listWhatL=[{
    'Image': NetworkImage('https://avatars.githubusercontent.com/u/29085361?v=4'),

    'name': 'My Status',
    'date': 'Tap to add status update ',

  }];
  List<Map<dynamic,dynamic>> listWhat=[
    {
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW29THyAvjHmKA8sN14F6eTbT1KkTaIFF8SxwgsMcvlQ&s'),
      'name': 'Raj',
      'date': '12:10am',
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX4BymD26ur6LHeO2WjPGLuPkrSf12lGhT2zUsCp4KykCN5ZniUEhvCw7QaFCYQgBsCk&usqp=CAU'),
      'name': 'Rakesh',
      'date': '1/12/24',
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1K68QF717KgWu76vmBt8MkubOA7QV-dfmGBnNh03YSM3LXx3prK5mNh28OVbjnvyeQuA&usqp=CAU'),
      'name': 'Raju',
      'date': '2/12/24',
    },{
      'Image':NetworkImage('https://cdn-icons-png.flaticon.com/512/5556/5556499.png'),
      'name': 'Khalash',
      'date': '3/12/24',
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREZNQ6Pte02JNcAfeti0b-oiumHtdNOkXQrCZp7bfQYuxe44LbbaIN0MccovXN04stLDg&usqp=CAU'),
      'name': 'jesh',
      'date': '12/2/24',
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkfF6nBhidhIzL330CYtg70I8tpDBGJ2YjBPnE9D9gY0iLmGu563WBIab4KBexSDv7kG8&usqp=CAU'),
      'name': 'Bheru',
      'date': '12/12/24',
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd14Txv031zmnOdB79hQpF03Vih_bR3e3ccvgiRQWe-_UUkV1cBMychdcfU1602SpaDe4&usqp=CAU'),
      'name': 'Ramesh',
      'date': '4/12/24',
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThjMLhnISVIk3Mhkuind6jgufZhDMPehjPGWQCABz2JaZcyYwSWyVgLTRknHM0hwCtXCI&usqp=CAU'),
      'name': 'jack',
      'date': '12/12/24',
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLTfamKfxvPPPCcni48W2Q-VghhvjG7-GywGIsk4AHbJCAy8XoSaXxvf2TgB9fncNK03w&usqp=CAU'),
      'name': 'Harsh',
      'date': '12/12/24',
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX4BymD26ur6LHeO2WjPGLuPkrSf12lGhT2zUsCp4KykCN5ZniUEhvCw7QaFCYQgBsCk&usqp=CAU'),
      'name': 'jitesh',
      'date': '12/12/24',

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Status'),
        backgroundColor: Colors.tealAccent.shade700,
      ),
      body: Stack(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Padding(
            padding: const EdgeInsets.only(top:20,left: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Status',style: TextStyle(fontSize: 25),),
                Padding(
                  padding: EdgeInsets.only(top:20,right: 23),
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
            SizedBox(
              height: 65,
              child: ListView.builder(
                itemCount: listWhatL.length,itemBuilder: (context, i) =>
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (listWhatL[i]['Image']),
                      foregroundColor: Colors.white,
                     // child: (listWhatL[i]['icon']),
                    ),
                    title: Text(listWhatL[i]['name']),
                    subtitle: Text(listWhatL[i]['date']),
                  ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:17),
              child: Text('Recent Updates',style: TextStyle(fontSize: 18),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listWhat.length,itemBuilder: (context, i) =>
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (listWhat[i]['Image']),
                      child: (listWhat[i]['icon']),
                    ),
                    title: Text(listWhat[i]['name']),
                    subtitle: Text(listWhat[i]['date']),
                  ),
              ),
            ),
          ],
        ),
          Positioned(
              bottom: 20,
              right: 12,
              child
                  : ElevatedButton(onPressed: (){}, child: Icon(Icons.camera_alt,color: Colors.white,),style: ElevatedButton.styleFrom(
                  shape:  ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(40, 20))),
                  backgroundColor: Colors.tealAccent.shade700,foregroundColor: Colors.black,
                  fixedSize: Size(40, 50),textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)))
          )
      ]
      ),
    );

  }
}