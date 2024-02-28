import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"demo app",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(79, 221, 69, 0.486),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color.fromARGB(225, 99, 39, 1),
            fontSize: 40,fontWeight: FontWeight.bold
          ),
          toolbarHeight: 100,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          actionsIconTheme: IconThemeData(color: Colors.cyanAccent,size: 60),
          actions: [Icon(Icons.notifications),
          SizedBox(width: 10,),
          Icon(Icons.person),
          SizedBox(width: 10,),
          Icon(Icons.search)],
        ),

      //  body:Text("helloworld",style: TextStyle(
      //   fontSize: 40,
      //   foreground: Paint()
      //     ..style = PaintingStyle.stroke
      //     ..strokeWidth = 6
      //     ..color = Colors.blue[700]!)),
//          body:  Text(
//   'Greetings, planet!',
//   style: TextStyle(
//     fontSize: 40,
//     foreground: Paint()
//       ..shader = ui.Gradient.linear(
//         const Offset(0, 20),
//         const Offset(150, 20),
//         <Color>[
//           Color.fromARGB(255, 4, 94, 55),
//           Color.fromARGB(255, 218, 82, 14),
//         ],
//       )
//   ),
// ),
// body:RichText(
//   text: TextSpan(
//     text: 'Hello ',
//     style:TextStyle(color: Colors.cyan),
//     children: const <TextSpan>[
//       TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber)),
//       TextSpan(text: ' world!',style: TextStyle(color: Color.fromARGB(255, 60, 3, 192)))
//     ],
//   ),
// )
// body:Row(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),
// Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// )
// ])

// body:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),
// Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// )
// ])
//-------------scroll horizontal using listview----------
// body: ListView(scrollDirection: Axis.horizontal,
// children: [ Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),
// ],),
//-------------scroll vertical using listview----------
// body: ListView(
// children: [ Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),
// ],),
//-------------row inside listview----------
// body: ListView(scrollDirection: Axis.horizontal,
// children: [Row(children: [ Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),
// ],),],)
//-------------columns inside listview----------
// body: ListView(scrollDirection: Axis.vertical,
// children: [Column (children: [ Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17)),),
// ),
// ],),],)
//-------------center widget to view in center----------
// body: Center(
// child: [Container(width: 100,height: 100,padding:EdgeInsets.all(30),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17))
// ),],),
//---------stack align----------
// body:Stack(alignment: Alignment.center,children: [Container(width: 200,height: 200,padding: EdgeInsets.only(left: 20),margin: EdgeInsets.only(top: 60,left: 60),
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 14, 37, 105)),
// child: Text("hello",style: TextStyle(color: Color.fromARGB(255, 123, 237, 17))),)]
//---------set iocns------
body: Container(child: Icon(Icons.home,size: 70,color: Colors.yellow,),),

  ),);}
}
