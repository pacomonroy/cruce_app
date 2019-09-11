import 'package:flutter/material.dart';



class Inicio extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(

         body: Image.asset('assets/img/cruce.png'), //   <-- image
       ),
    ); //Container
  }
}