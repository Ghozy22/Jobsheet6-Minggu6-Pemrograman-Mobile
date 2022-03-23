import 'package:flutter/material.dart';
import 'package:jpbsheet6/homeScreen.dart';
import 'package:jpbsheet6/itemScreen.dart';


void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => HomeScreen(),
        '/detail':(context) => const ItemScreen(),
      },
    );

  }
}