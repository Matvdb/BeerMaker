import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: const[
            Text("BeerMaker")
            ],
            ),
            ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("assets/images/BMLogo/beermakerlogo350.png")),
              ),
              Text("BeerMaker", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)
              ],
          ),
          Padding(padding: EdgeInsets.all(30)),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/etapes'),
            child: const Text("Etapes de fabrication"),),
          ),
          Padding(padding: EdgeInsets.all(10)),
          SizedBox(
             height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/outils'),
            child: const Text("Outils de fabrication"),),
          ),
          Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/recettes'),
            child: const Text("recettes"),),
          )
        ],
      ),
    );
  }
}