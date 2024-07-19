import 'package:flutter/material.dart';

class Whatsappcall extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WhatsappState();
  }
}
class WhatsappState extends State<Whatsappcall>{
  List<Map<dynamic,dynamic>> listWhatL=[{
    'color': Colors.tealAccent.shade700,
    'nam': 'Create call link',
    'text': 'Share a link for your WhatsApp call ',
    'ic':Icon(Icons.link),
  }];
  List<Map<dynamic,dynamic>> listWhat=[
    {
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW29THyAvjHmKA8sN14F6eTbT1KkTaIFF8SxwgsMcvlQ&s'),
      'name': 'Raj',
      'date': 'Today,9:10am',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_made),
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX4BymD26ur6LHeO2WjPGLuPkrSf12lGhT2zUsCp4KykCN5ZniUEhvCw7QaFCYQgBsCk&usqp=CAU'),
      'name': 'Rakesh',
      'date': 'Today,6:10am',
      'icon':Icon(Icons.video_call),
      'arrow': Icon(Icons.call_made),
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1K68QF717KgWu76vmBt8MkubOA7QV-dfmGBnNh03YSM3LXx3prK5mNh28OVbjnvyeQuA&usqp=CAU'),
      'name': 'Raju',
      'date': 'Today,5:10am',
      'icon':Icon(Icons.video_call),
      'arrow': Icon(Icons.call_made),
    },{
      'Image':NetworkImage('https://cdn-icons-png.flaticon.com/512/5556/5556499.png'),
      'name': 'Khalash',
      'date': 'Yesterday,12:10am',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_received),
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREZNQ6Pte02JNcAfeti0b-oiumHtdNOkXQrCZp7bfQYuxe44LbbaIN0MccovXN04stLDg&usqp=CAU'),
      'name': 'jesh',
      'date': '5 March,9:45pm',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_received),
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkfF6nBhidhIzL330CYtg70I8tpDBGJ2YjBPnE9D9gY0iLmGu563WBIab4KBexSDv7kG8&usqp=CAU'),
      'name': 'Bheru',
      'date': '3 March,11:45pm',
      'icon':Icon(Icons.video_call),
      'arrow': Icon(Icons.call_received),
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd14Txv031zmnOdB79hQpF03Vih_bR3e3ccvgiRQWe-_UUkV1cBMychdcfU1602SpaDe4&usqp=CAU'),
      'name': 'Ramesh',
      'date': '3 March,4:45pm',
      'icon':Icon(Icons.video_call),
      'arrow': Icon(Icons.call_made),
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThjMLhnISVIk3Mhkuind6jgufZhDMPehjPGWQCABz2JaZcyYwSWyVgLTRknHM0hwCtXCI&usqp=CAU'),
      'name': 'jack',
      'date': '1 March,9:45am',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_made),
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLTfamKfxvPPPCcni48W2Q-VghhvjG7-GywGIsk4AHbJCAy8XoSaXxvf2TgB9fncNK03w&usqp=CAU'),
      'name': 'harsh',
      'date': '5 Feb,11:45pm',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_received),
    },{
      'Image':NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX4BymD26ur6LHeO2WjPGLuPkrSf12lGhT2zUsCp4KykCN5ZniUEhvCw7QaFCYQgBsCk&usqp=CAU'),
      'name': 'jitesh',
      'date': '22 Feb,10:45pm',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_received),
    },{
      'Image': NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW29THyAvjHmKA8sN14F6eTbT1KkTaIFF8SxwgsMcvlQ&s'),
      'name': 'Hit',
      'date': '1 March,9:45am',
      'icon':Icon(Icons.phone),
      'arrow': Icon(Icons.call_made),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Call'),
        backgroundColor: Colors.tealAccent.shade700,
      ),
      body: Stack(
        children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
                child: ListView.builder(
                  itemCount: listWhatL.length,itemBuilder: (context, i) =>
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: listWhatL[i]['color'],
                        child: (listWhatL[i]['ic']),
                      ),
                      title: Text(listWhatL[i]['nam']),
                      subtitle: Text(listWhatL[i]['text']),
                    ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:17),
                child: Text('Recent',style: TextStyle(fontSize: 18),),
              ),
              Expanded(
                child: ListView.builder(
                itemCount: listWhat.length,itemBuilder: (context, i) =>
                  ListTile(
                    leading: CircleAvatar(
                     backgroundImage: (listWhat[i]['Image']),
                      backgroundColor: listWhat[i]['color'],
                      child: (listWhat[i]['icons']),
                    ),
                    title: Text(listWhat[i]['name']),
                    subtitle: Row(
                      children: [
                        (listWhat[i]['arrow']),
                        Text(listWhat[i]['date']),
                      ],
                    ),
                    trailing: Container(
                      width: 10,
                      height: 10,
                      child: (listWhat[i]['icon']
                    )
                              ),
                      ),
                      ),
              ),
            ],
          ),
          Positioned(
              bottom: 20,
              right: 12,
              child
                  : ElevatedButton(onPressed: (){}, child: Icon(Icons.add_ic_call_rounded,color: Colors.white,),style: ElevatedButton.styleFrom(
                  shape:  ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(40, 20))),
                  backgroundColor: Colors.tealAccent.shade700,foregroundColor: Colors.black,
                  fixedSize: Size(40, 50),textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)))
          )
      ]
      )
    );

  }
}