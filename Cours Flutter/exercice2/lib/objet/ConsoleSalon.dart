import 'package:exercice2/objet/ConsoleGen.dart';

class ConsoleSalon extends ConsoleGen{
  String typeManettes;



  ConsoleSalon(String name, int prix, String typeManettes)
      : super(name, prix){
    this.name = name;
    this.prix = prix;
    this.typeManettes = typeManettes;
  }

  int get getPrix{
    return this.prix;
  }

  String get getName{
    return this.name;
  }

  String get getTypeManettes{
    return this.typeManettes;
  }



}