import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/calculs.dart';
import 'package:flutter_application_1/recette.dart';
import 'package:flutter_application_1/strings.dart';


class OutilsFabrication extends StatefulWidget {
  const OutilsFabrication({super.key, required this.title});

  final String title;

  @override
  State<OutilsFabrication> createState() => OutilsFabricationState();
}

class OutilsFabricationState extends State<OutilsFabrication> {
  final _formkey = GlobalKey<FormState>();
  double _litreBiere = 0;
  double _degres = 0;
  double _ebcGrain = 0;
  Column _resultat = Column();
  String _valeurSaisie = "";

  void calculer() {
    double malt = Calculs.calculMalt(_litreBiere, _degres);
    double brassage = Calculs.calculBrassage(malt);
    double rincage = Calculs.calculRincage(_litreBiere, brassage);
    double amerisant = Calculs.calculAmerisant(_litreBiere);
    double aromatique = _litreBiere;
    double levure = Calculs.calculLevure(_litreBiere);
    double mcu = Calculs.calculMCU(_ebcGrain, _litreBiere);
    double ebc = Calculs.calculEBC(mcu);
    double srm = Calculs.calculSRM(ebc);
    String rgb = Recette.srmToRGB(srm);
    setState(() {
      _resultat = Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
                '${Strings.phraseMalt}$malt kg\n${Strings.phraseBrassage}$brassage L\n${Strings.phraseRincage}$rincage L\n${Strings.phraseAmerisant}$amerisant g\n${Strings.phraseAromatique}$aromatique g\n${Strings.phraseLevure}$levure g'),
          ),
          const Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    '${Strings.phraseMCU}$mcu\n${Strings.phraseEBC}$ebc\n${Strings.phraseSRM}$srm'),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Container(
                height: 50,
                width: 200,
                color: Color(int.parse(rgb)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(rgb,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => null,
                child: const Text('Enregistrer'),
              ),
            ],
          ),
        ],
      );
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
      body:SingleChildScrollView(child: Column(
        children:[ 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:const [
              SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("assets/images/BMLogo/beermakerlogo350.png")),
              ),
              Text("Outils de fabrication", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
              ],
          ),
        Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(Strings.phraseBiere, style: TextStyle(fontSize: 18.0),),
                  const Padding(padding: EdgeInsets.all(8)),
                Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Litre/s voulu"),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  validator: (biere) {
                    if (biere == null || biere.isEmpty) {
                      return 'Please enter some text';
                    } else {
                      _litreBiere = double.parse(biere.toString());
                    }
                  },
                ),
              ),
              ],
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                const Text(Strings.phraseDegres, style: TextStyle(fontSize: 18.0),),
                const Padding(padding: EdgeInsets.all(8)),
                Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Dégrés"),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  validator: (degres) {
                    if (degres == null || degres.isEmpty) {
                      return 'Please enter some text';
                    } else {
                      _degres = double.parse(degres.toString());
                    }
                  },
                ),
              ),
              ],
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                const Text(Strings.phraseGrains, style: TextStyle(fontSize: 18.0),),
                const Padding(padding: EdgeInsets.all(8)),
                Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Moyenne EBC"),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  validator: (ebc) {
                    if (ebc == null || ebc.isEmpty) {
                      return 'Please enter some text';
                    } else {
                     _ebcGrain = double.parse(ebc.toString());
                    }
                  },
                ),
              ),
              ],
              ),
             const Padding(padding: EdgeInsets.all(20)),
             SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.95 ,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      calculer();
                    }
                  },
                  child: const Text(Strings.phraseEnvoyer)),),
              
              const Padding(padding: EdgeInsets.all(10)),
              _resultat,
            ],
          ),
        ),
      ),
      ],),
      ),
    );
  }
}