/*
Simulation d'un systeme de voyage

*/
import 'dart:io';

void main(){
  List menu = ["1. Incsription", "2. Itinearaire", "3. Reservation", "4. Remboursement", "5. Quitter"];
  Map information = {};

  var isRunning = true;
  afficherMenu(menu);
  select(information);

}

// Fonction pour afficher le menu
void afficherMenu(List menu){
  
  print("Options du Menu");
  print("-"*50);

  // Afficher les options du menu
  menu.forEach((option){
    print(option);
  });
}

// Fonction pour le choix du menu
void select(Map information){
  stdout.write("Entrer une option: ");
  String? choice = stdin.readLineSync();
  // print(choice);
  if (choice == "1"){
    print("Inscription");
    information = inscription(information);
    print(information);
  } else if (choice == "2"){
    print("Itinearaire");
  } else if (choice == "3"){
    print("Reservation");
  } else if (choice == "4"){
    print("Remboursement");
  } else if (choice == "5"){
    print("Quitter");
  }
}

inscription(
  Map map
){
  stdout.write("Entrez votre id: ");
  String? id = stdin.readLineSync();

  stdout.write("Entrez votre nom: ");
  String? name = stdin.readLineSync();

  stdout.write("Entrez votre telephone: ");
  String? phone = stdin.readLineSync();

  stdout.write("Date d'inscription: ");
  String? date = stdin.readLineSync();

  map.addAll({
    id: [name, phone, date]
  });

  return map;
}

itineraire(){
  stdout.write("Entrez le nom de la ville de depart: ");
  String? villeDepart = stdin.readLineSync();

  stdout.write("Entrez le nom de la ville de destination: ");
  String? villeDestination = stdin.readLineSync();

  if (villeDepart == "BZV" && villeDestination == "PN"){
    print("Montant de BZV a PN: 15000");
  } 
}