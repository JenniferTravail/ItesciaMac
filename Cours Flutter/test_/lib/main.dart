import 'package:flutter/material.dart';

import 'objet/personne.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast cook',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,

      ),
      home: MyHomePage(title: 'Luna Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String adresse = "";
  String nom ="";
  String prenom ="";
  String age ="";
  String email ="";
  String all ="";
  Personne people;

void _information(){
  setState(() {
     all = 'Prénom : $prenom Nom : $nom Adresse: $adresse  Email : $email Age: $age';
     people = new Personne(nom, prenom, adresse, age, email);
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

            TextField(
              onSubmitted: (String inputNom){
                setState(() {
                nom = inputNom;
                });
              },

              decoration: InputDecoration(
                labelText: "Nom"
              ),
            ),
            TextField(
              onChanged: (String inputPrenom){
                setState(() {
                  prenom = inputPrenom;
                });
              },
              decoration: InputDecoration(
                  labelText: "Prénom"
              ),
            ),
            TextField(
              onSubmitted: (String inputAdresse){
                setState(() {
                  adresse = inputAdresse;
                });
              },
              decoration: InputDecoration(
                  labelText: "Adresse"
              ),
            ),
            TextField(
              onSubmitted: (String inputEmail){
                setState(() {
                  email = inputEmail;
                });
              },
              decoration: InputDecoration(
                  labelText: "Email"
              ),
            ),
            TextField(
              onSubmitted: (String inputAge){
                setState(() {
                  age = inputAge;
                });
              },
              decoration: InputDecoration(
                  labelText: "Age"
              ),
            ),
            IconButton(
              icon: new Icon(Icons.add),
                onPressed: _information,

              ),
            Text(
              '$all'
            ),
            FlatButton(onPressed: _information, child: new Text("ajouter")),
            RaisedButton(onPressed: _information,
            child: new Text(
              "Validation",
            ),
              color: Colors.purple,
            ),
            ElevatedButton(onPressed: _information,
                child: new Text("A3!"),
            style: new ButtonStyle(),
            )


          ],
        ),
      ),


    );
  }
}
