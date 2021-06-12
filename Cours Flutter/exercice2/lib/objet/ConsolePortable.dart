import 'package:exercice2/objet/ConsoleGen.dart';

class ConsolePortable extends ConsoleGen{
  int tailleEcran;



  ConsolePortable( String name, int prix, int tailleEcran,)
      : super(name, prix){
    this.tailleEcran = tailleEcran;
  }


}