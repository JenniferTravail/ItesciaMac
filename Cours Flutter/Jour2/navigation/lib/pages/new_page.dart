import 'package:flutter/material.dart';

class NouvellePage extends StatelessWidget{

  String title;

  NouvellePage(String mytitle){
    this.title = mytitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),

      ),
      body: new Center(
        child: Column(
          children: [
            TextField(
              onSubmitted: (String monNom){

              },
              decoration: new InputDecoration(
                labelText: "Nom"
              ),
            ),
            Text("Voico ma nouvelle Page"),

          ],

        ),



      ),

    );
  }
}