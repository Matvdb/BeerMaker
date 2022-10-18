import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/recettes.dart';

class BiereBlonde extends StatefulWidget {
  const BiereBlonde({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<BiereBlonde> createState() => _BiereBlondeState();
}

class _BiereBlondeState extends State<BiereBlonde> {

  final Uri _url = Uri.parse('http://www.cetaradio.fr/player/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: const Image(image: AssetImage("assets/images/BMLogo/beermakerlogo350.png"))
                ),
                const Padding(padding: EdgeInsets.all(5)),
                const Text('BeerMaker'),
              ],
            ),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(width: MediaQuery.of(context).size.width * 0.95, height: MediaQuery.of(context).size.height * 0.5,child:Image(image: AssetImage("assets/images/biereBlonde.png"),),),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Recette",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20.0,
              ),
            ),
            
            ),
          ],
        ),
      ),

      ),
    );
  }
}