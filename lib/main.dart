import 'package:flutter/material.dart';


import './Inicio.dart';
import './Contenido.dart';
import './Eventos.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState(){
    return MyAppState();
  }

}

class MyAppState extends State <MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    Inicio(),
    Contenido(),
    Eventos(),
  ];


  @override

 Widget build(BuildContext context){
   return MaterialApp(
     title: 'CRUCE APPjj',
     theme: ThemeData(
       primarySwatch: Colors.blue,
       ), //Theme Data
       home: Scaffold(appBar:
       AppBar(title: Text('CRUCE'),),
         body: _pageOptions[_selectedPage],
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: _selectedPage,
           onTap: (int index){
             setState(() {
               _selectedPage = index;
             });
           },
           items: [
             BottomNavigationBarItem(
               icon: Icon(Icons.home),
               title: Text('Inicio')
             ), //ButtomNavigationBarItem
             BottomNavigationBarItem(
                 icon: Icon(Icons.panorama),
                 title: Text('Contenido')
             ), //ButtomNavigationBarItem
             BottomNavigationBarItem(
                 icon: Icon(Icons.date_range),
                 title: Text('Eventos')
             ), //ButtomNavigationBarItem
           ],
         ),

       ), //Scaffold
   ); //Material App
 }
}