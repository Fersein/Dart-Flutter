class Personne{
  String name; // attribut
  int age;
    // Constructeur
    Personne(this.name, this.age); // constructeur

    // methode
    void greeting(){
      print("Je suis $name! J'ai $age");
    }
}