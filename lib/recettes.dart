import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/recette_Biereblonde.dart';

class Recettes extends StatefulWidget {
  const Recettes({Key? key}) : super(key: key);

  @override
  State<Recettes> createState() => _RecettesState();
}

class _RecettesState extends State<Recettes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BiereBlondeImg()
          ],
        )),
    );
  }
}
class BiereBlondeImg extends StatelessWidget {
  const BiereBlondeImg({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("assets/images/biereBlonde.png");
    Image image = Image(image: assetImage);
    SizedBox(
      width: 100,
      height: 100,
      child: image,
    );
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BiereBlonde(title: "Bière Blonde",)));
      },
    child:Card(
        margin: EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              widthFactor: null,
              heightFactor: null,
              
              child: Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: image,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text("Bière Blonde",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ],
        )));
  }
}