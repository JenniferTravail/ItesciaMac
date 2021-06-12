import 'package:flutter/material.dart';
import 'pages/new_page.dart';

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
      // Pour retirer le ruban
      debugShowCheckedModeBanner: false,
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
           Text(
             'Je suis une reine'
           )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: versNouvellePage,
        tooltip: 'new Page',
        child: Icon(Icons.home),
      ),

    );

  }
  void versNouvellePage(){
    // La méthode navigator pour naviguer vient de l'api flutter
    //
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext){
      return new NouvellePage('Seconde Page');
    }
    ));
  }


}
