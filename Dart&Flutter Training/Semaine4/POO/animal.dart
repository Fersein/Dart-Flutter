class Animal {
  void parler(){
    print("L'animal fait du bruit");
  }
}

// La classe chien herite de la classe animal
class Chien extends Animal{

  // // Override pour redefinir les methodes
  @override
  void parler(){
    print("Le chien aboie: wouf !");
  }
}