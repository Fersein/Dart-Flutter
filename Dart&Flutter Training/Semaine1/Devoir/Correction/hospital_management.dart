import 'dart:io'; //input ouput

void main(){
  // Liste des departements
  List departments = ["Pédiatrie", "Imagerie", "Urologie"];

  // dictionnaire des patients
  Map<dynamic, List> patients = {}; 

  // dictionnaire des frais de consultation
  Map<dynamic, dynamic> registration_fees = {};

  // Dictionnaire des historiques 
  Map<String, dynamic> records = {};

  // Dictionnaire des paiements de medicaments
  Map<int, dynamic> drugPaymentRecords = {};

  // Dictionnaire de la pharmacie
  Map<int, dynamic> drugsBought = {};

  // Affichage de tout
  print("La liste des departements $departments");
  print("Le dictionnaire des parients $patients");
  print("La dictionnaire des frais de consultation $registration_fees");
  print("Le dictionnaire des historiques $records");
  print("La dictionnaire des paiements de medicaments $drugPaymentRecords");
  print("Le dictionnaire de de la pharmacie $drugsBought");

  //1. Enregistrement
  stdout.write("Entrer l'ID du patient: ");
  String? id = stdin.readLineSync();
   stdout.write("Entrer le nom du patient");
  String? lastName = stdin.readLineSync();
  patients.addAll({
    id: [lastName,"Claire", "066006060", departments[0]],
    000002: ["Kuma","Chris", "055005050", departments[1]],
    000003: ["Moussoundi","Jacques", "044004040", departments[2]],
  });

  // Apres enregistrement
  print("Les patients qui viennent de se faire consulter: $patients");

  // 2. Paiement des frais de consultations
  registration_fees.addAll({
    000001: 5000,
    000002: 10000,
    000003: 15000,
  });

  print("Les patients ayant payes leur consultation ${registration_fees}");

  //3. Prise en charge par le medecin
  
  records.addAll(
    {
      "Goma": [patients[000001], "Claire souffre du ventre", "besoin de plus de repos avec un ajout de medicament"],
      "Tshiv": [patients[000002], "Chris souffre de la tete", "besoin de plus de repos avec un ajout de medicament"],
      "Jorvi": [patients[000003], "Mouss souffre du pieds", "besoin de plus de repos avec un ajout de medicament"],
    }
  );

  print("La prise en charge $records");
}