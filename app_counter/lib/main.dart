

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
  return CounterApp();
  }
}

class CounterApp extends StatefulWidget{

 const  CounterApp({super.key});
 @override
  State<CounterApp> createState() => _CountingNum();
}
class _CountingNum extends State<CounterApp> {
    int counter = 0;

  void count() {
 setState(() {
      counter++;
    });
  }
    void reload() {
 setState(() {
      counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Counter App',style: TextStyle(fontWeight: FontWeight.bold,),), 
      backgroundColor: const Color.fromARGB(255, 89, 145, 241)
      ),
      body: Column(
        children: [
          Flexible(
          flex: 2,
         child: Center(
         child: Text('$counter', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold,)),
      ),
      ), Row(
        children: [
           Align(alignment: Alignment.bottomLeft,
        child: Container(
        margin: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
        color: const Color.fromARGB(255, 140, 154, 179) ,
        ),
      child: IconButton(
      padding: EdgeInsets.all(15.0),
      onPressed: reload, 
      icon: Icon(Icons.rotate_left), iconSize: 50, color: const Color.fromARGB(255, 255, 255, 255)),
      )
      ),
      Expanded(
        flex:2,
        child: SizedBox(width:1.0)
        ),
      Align(alignment: Alignment.bottomRight,
        child: Container(
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
        color:  const Color.fromARGB(255, 140, 154, 179),
        ),
      child: IconButton(
      padding: EdgeInsets.all(15.0),
      onPressed: count, 
      icon: Icon(Icons.add), iconSize: 50, color: const Color.fromARGB(255, 255, 255, 255)),
      )
      ),
        ],
      ),
      SizedBox(height: 100.0),
      ],
      ),
    ),
  );
  }  
}