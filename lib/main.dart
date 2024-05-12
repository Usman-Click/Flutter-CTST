import 'package:app/main_page.dart';
import 'package:flutter/material.dart';

void main(){
  // new MyApp() in java - we're instantiating the class
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
  
}