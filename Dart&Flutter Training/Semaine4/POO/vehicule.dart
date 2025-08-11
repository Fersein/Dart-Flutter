abstract class Vehicule {
  void demarrer();
} 

class Voiture extends Vehicule{
  @override
  void demarrer(){
    print("La voiture demarre");
  }
}