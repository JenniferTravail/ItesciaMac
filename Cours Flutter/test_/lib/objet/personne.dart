class Personne{
  String adresse;
  String nom;
  String prenom ;
  String age;
  String email;

  Personne(String nom, String prenom, String adresse, String age, String email){
    this.nom = nom ;
    this.prenom = prenom ;
    this.adresse = adresse;
    this.age = age;
    this.email = email;

  }

  String get getPrenom{
    return this.prenom;
  }
  String get getNom{
    return this.nom;
  }

  String get getEmail{
    return this.email;
  }

  String get getAge{
    return this.age;
  }

  String get getAdresse{
    return this.adresse;
  }



}