import 'package:exercice2/objet/ConsolePortable.dart';
import 'package:exercice2/objet/ConsoleSalon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}






class _MyHomePageState extends State<MyHomePage> {
    String nom, manette,  _information;
      int  tailleEcran, prix ;
    String choix = 'Console Portable';

    bool _visible= true;

    ConsolePortable portable;
    ConsoleSalon salon;
  void essaie(){
    portable = new ConsolePortable(nom, prix, tailleEcran);
  }

   void  _informationF(){
     setState(() {
      _information = 'Nom console : $nom  prix: $prix $manette $tailleEcran';
     });

    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: choix,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue){
                setState(() {
                  choix = newValue;
                  if(newValue == 'Console Portable'){
                    _visible = !_visible;
                  }

                });
              },
              items: <String>['Console Portable', 'Console de salon']
                  .map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ) ;
              }).toList(),

            ),


            TextField(
              onChanged: (String inputNom){
                setState(() {
                  nom = inputNom;
                });
              },
              decoration: InputDecoration(
                labelText: "Nom"
              ),

            ),
            TextField(
              onChanged: (String inputPrix){
                setState(() {
                  prix = int.tryParse(inputPrix);
                });
              },
            decoration: InputDecoration(
              labelText: "Prix"
            )
            ,
            ),

            Visibility(
              visible: _visible,
              child:
                TextField(
                  onChanged: (String inputTailleEcran){
                    setState(() {
                      tailleEcran = int.tryParse(inputTailleEcran);
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Taille Ecran"
                  ),


                ),
            ),
            Visibility(
              visible: !_visible,
              child:
              TextField(
                onChanged: (String inputManette){
                  setState(() {
                    manette = inputManette;
                  });
                },
                decoration: InputDecoration(
                    labelText: "Mannette"
                ),


              ),

            ),

            IconButton(
              icon: new Icon(Icons.add),
              onPressed: _informationF,

            ),

            Text(
              '$_information'
            ),



          ],
        ),
      ),

    );
  }
}
