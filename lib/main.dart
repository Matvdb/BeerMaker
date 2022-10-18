import 'package:flutter/material.dart';
import 'package:flutter_application_1/SplashScreen.dart';
import 'package:flutter_application_1/fabrication.dart';
import 'package:flutter_application_1/outilsFabrication.dart';
import 'package:flutter_application_1/recettes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'BeerMaker'),
      routes: <String, WidgetBuilder>{
          '/etapes': (BuildContext context) =>
              const Fabrication(title: 'Etapes de fabrication',),
          '/outils': (BuildContext context) =>
              const OutilsFabrication(title: 'Outils de fabrication',),
          '/recettes' : (BuildContext context) => 
              const Recettes(),
        });
    
  }
}


