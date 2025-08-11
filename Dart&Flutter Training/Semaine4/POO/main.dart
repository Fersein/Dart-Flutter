import 'animal.dart';
import 'classes.dart';
import 'compte_bancaire.dart';

void main(){
  // 1. Definition
  // La POO est un pradigme de programmation base sur la notion d'objets,
  // qui regroupent a la fois des donnees (attributs) et des comportements (methodes).

  //2. Instance
  Personne claire = Personne("Claire", 12);
  claire.greeting();

  Personne mouss = Personne("Mouss", 15);

  // 3. Encapsulation
  CompteBancaire monCompte = CompteBancaire();

  //3.1 setters & getters
  monCompte.setSolde = 5000; // setter
  print("Solde: ${monCompte.getSolde}"); // getter

  //3.2. Methode
  monCompte.deposer(5000);
  monCompte.retirer(2000);

  //4. Heritage ou Inheritance
  Chien milou = Chien();
  milou.parler();
  
}