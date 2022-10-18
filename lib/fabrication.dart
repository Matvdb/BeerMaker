
import 'package:flutter/material.dart';
import 'package:flutter_application_1/strings.dart';

class Fabrication extends StatefulWidget {
  const Fabrication({super.key, required this.title});

  final String title;

  @override
  State<Fabrication> createState() => FabricationState();
}

class FabricationState extends State<Fabrication> {
  int _i = 0;
  var _controller;
  String _titre = Strings.titre0;
  String _texte = Strings.texte0;

  Container _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step00.png")));
  Container _image2 = Container(height: 200,width: 200, child: Text(""));
  Container _image3 = Container(height: 200,width: 200, child: Text(""));
  Container _image4 = Container(height: 200,width: 200, child: Text(""));

  void decrement() {
    if (_i > 0) {
      _i--;
      counter();
    }
  }

  void increment() {
    if (_i < 9) {
      _i++;
      counter();
    }
  }


  IconButton buttonNext() {
    IconButton result = const IconButton(onPressed: null, icon: Icon(null));
    if (_i != 8) {
      result = IconButton(
          onPressed: increment,
          icon: const Icon(
            Icons.arrow_forward,
            size: 25,
          ));
    }
    return result;
  }

  IconButton buttonPrevious() {
    IconButton result = const IconButton(onPressed: null, icon: Icon(null));
    if (_i != 0) {
      result = IconButton(
          onPressed: decrement,
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ));
    }
    return result;
  }



  void counter() {
    setState(() {
      switch (_i) {
        case 0:
          _titre = Strings.titre0;
          _texte = Strings.texte0;
          _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step00.png"),));
          break;
        case 1:
          _titre = Strings.titre1;
          _texte = Strings.texte1;
          _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step10.png"),));
          _image2 = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step11.png"),));
          break;
        case 2:
          _titre = Strings.titre2;
          _texte = Strings.texte2;
           _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step20.png"),));
          _image2 = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step21.png"),));
          break;
        case 3:
          _titre = Strings.titre3;
          _texte = Strings.texte3;
           _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step30.png"),));
          _image2 = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step31.png"),));
          break;
        case 4:
          _titre = Strings.titre4;
          _texte = Strings.texte4;
           _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step40.png"),));
          _image2 = Container(height: 200,width: 200, child: Text(""));
          _image3 = Container(height: 200,width: 200, child: Text(""));
          _image4 = Container(height: 200,width: 200, child: Text(""));
          break;
        case 5:
          _titre = Strings.titre5;
          _texte = Strings.texte5;
           _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step50.png"),));
          _image2 = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step51.png"),));
          _image3 = Container(height: 200,width: 200, child:Image(image: AssetImage("assets/images/BeerMaker_step/step52.png")));
          _image4 = Container(height: 200,width: 200, child:Image(image: AssetImage("assets/images/BeerMaker_step/step53.png")));
  
          break;
        case 6:
          _titre = Strings.titre6;
          _texte = Strings.texte6;
          _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step60.png"),));
          _image2 = Container(height: 200,width: 200, child: Text(""));
          _image3 = Container(height: 200,width: 200, child: Text(""));
          _image4 = Container(height: 200,width: 200, child: Text(""));
          break;
        case 7:
          _titre = Strings.titre7;
          _texte = Strings.texte7;
          _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step70.png"),));
          _image2 = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step71.png"),));
          _image3 = Container(height: 200,width: 200, child: Text(""));
          _image4 = Container(height: 200,width: 200, child: Text(""));
          break;
        case 8:
          _titre = Strings.titre8;
          _texte = Strings.texte8;
          _image = Container(height: 200, width: 200,child:Image(image: AssetImage("assets/images/BeerMaker_step/step80.png"),));
          _image2 = Container(height: 200,width: 200, child: Text(""));
          _image3 = Container(height: 200,width: 200, child: Text(""));
          _image4 = Container(height: 200,width: 200, child: Text(""));
          break;
      }
    });
  }

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
      body: SingleChildScrollView(child: Center(
        child: Column(
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
              Text("Etapes de fabrication", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              ],
          ),
          Text("Pensez à scroller afin d'avoir toutes les informations"),
          Padding(padding: EdgeInsets.all(8)),
            Text(_titre,
                style:
                    const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.all(10)),
            Text(_texte, style: TextStyle(fontSize: 20.0),),
            Padding(padding: EdgeInsets.all(8)),
            _image,
            _image2,
            _image3,
            _image4,
            
          ],
        ),
      ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        
            buttonPrevious(),
            buttonNext(),
           
          ],
        ),
      ),
    
    );
  }
}