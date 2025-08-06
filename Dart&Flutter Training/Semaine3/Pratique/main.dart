/*
Simulation d'un systeme de voyage

*/
import 'dart:io';

void main(){
  List menu = ["1. Incsription", "2. Itinearaire Claire", "3. Reservation Mouss", "4. Remboursement Chris", "5. Quitter"];
  Map information = {};

  var isRunning = true;
  print(isRunning);
  while (isRunning){
    afficherMenu(menu);
    isRunning = select(information, isRunning);
    print(isRunning);
  }

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
select(Map information, bool isRunning){
  stdout.write("Entrer une option: ");
  String? choice = stdin.readLineSync();
  // print(choice);
  if (choice == "1"){
    print("Inscription");
    information = inscription(information);
    print(information);
  } else if (choice == "2"){
    print("Itinearaire");
    itineraire();
  } else if (choice == "3"){
    print("Reservation");
    information = resevation(information);
    print(information);
  } else if (choice == "4"){
    print("Remboursement");
    information = remboursement(information);
  } else if (choice == "5"){
    print("Quitter");
    isRunning = false;
  }
  return isRunning;
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


itineraire() {
  stdout.write("Entrez le nom de la ville de depart: ");
  String? villeDepart = stdin.readLineSync();

  stdout.write("Entrez le nom de la ville de destination: ");
  String? villeDestination = stdin.readLineSync();

  if (villeDepart == "BZV" && villeDestination == "PN") {
    print("Montant de BZV a PN: 15000 FCFA");
  } else if (villeDepart == "Dolisie" && villeDestination == "PN") {
    print("Montant de Dolisie a PN: 5000 FCFA");
  } else if (villeDepart == "Nkayi" && villeDestination == "PN") {
    print("Montant de Nkayi a PN: 10000 FCFA");
  } else if (villeDepart == "BZV" && villeDestination == "Nkayi") {
    print("Montant de bzv a Nkayi: 5000 FCFA");
  } else if (villeDepart == "BVZ" && villeDestination == "Dolisie") {
    print("Montant de BZV a Dolisie: 10000 FCFA");
  } else {
    print("Il n y a pas d'autres itineraires disponibles");
  }
}

resevation(Map reservationMap) {
  stdout.write("Entrez votre id: ");
  String? idInput = stdin.readLineSync()?.trim();
  int? id = int.tryParse(idInput ?? '');

  stdout.write("Entrez votre nom: ");
  String? name = stdin.readLineSync();

  stdout.write("Date de la reservation: ");
  String? date = stdin.readLineSync();

  reservationMap.addAll({
    id: [name, date],
  });
  print("Reservation successful for $name on $date");
  return reservationMap;
}

remboursement(Map mapRemboursement){
  stdout.write("Entrez le motif de remboursement: ");
  String? motif = stdin.readLineSync();
  print("Motif de remboursement: $motif");
  if (motif == null || motif.isEmpty) {

    print("Motif de remboursement ne peut pas etre vide.");
    return mapRemboursement;
  }

  if (motif.length < 10) {
    print("Motif de remboursement doit contenir au moins 10 caracteres.");
    return mapRemboursement;
  }

  if (motif.length > 100) {
  print("Motif de remboursement ne doit pas depasser 100 caracteres.");
  return mapRemboursement;
  }

  else if (motif.length >= 10 && motif.length <= 100) {
    print("Motif de remboursement valide.");
    {
      switch(motif)
      {
        case "Annulation":
          print("Remboursement pour annulation");
          break;
        case "Changement de date":
          print("Remboursement pour changement de date");
          break;
      }
      bool isSuccessful = true; 
      if (isSuccessful) {
        print("Remboursement pour motif: $motif est reussi");
      }
}}
}