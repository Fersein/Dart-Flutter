import 'dart:io';

void main() {
  //Liste des departements de l'hopital

  List<dynamic> departements = ["Pediatrie", "Chirurgie", "Dentaire"];
  print("\n Les departements de l'hospital sont : $departements");
  print("\n");

  //Creation d'un dictionnaire des patients
  Map<dynamic, dynamic> patients = {};

  //Dictionnaire des frais de consultations
  Map<dynamic, dynamic> Frais_de_consultation = {};

  //Dictionnaire des historiques medicaux
  Map<dynamic, dynamic> historiquesMedicaux = {};

  //Dictionnaire des paiements des medicaments
  Map<dynamic, dynamic> medicaments = {};

  //Dictionnaire de la pharmacie
  Map<dynamic, dynamic> medicamentsAchetes = {};

  //Enregistrement du patient a son arrivee

  stdout.write("Entrer l'ID du patient: ");
  String? id = stdin.readLineSync();
  stdout.write("Entrer le nom du patient: ");
  String? Mak = stdin.readLineSync();
  print("\n");

  patients.addAll({
    id: ['Mak', 'Sephora', 18632539523, departements[0]],
    002: ['Mav', 'Gedeon', 12536038956, departements[2]],
    003: ['Mike', 'James', 17259360385, departements[1]],
  });
  print("les patients $patients se sont enregistrés avec succès. \n");

  //Paiement des frais de consultation
  Frais_de_consultation.addAll({001: '100¥', 002: '150¥', 003: '180¥'});
  print(
    "Les patients ayant paye leur consultation :  $Frais_de_consultation \n",
  );

  //Prise en charge par le medecin
  historiquesMedicaux.addAll({
    patients[001]:
        'Dr Claude, douleurs abdominales, vomissement, bonne alimentation, repos',
    patients[002]:
        'Dr Maria, douleurs musculaires, fievre, courbatures bonne alimentation, repos',
    patients[003]:
        'Dr Marvie, douleurs dentaires, carie, fatigue bonne alimentation, repos',
  });

  print("\n les historiques medicaux des patients :  $historiquesMedicaux");

  //Prescription de medicaments
  medicaments.addAll({
    001: 'Tetra 300¥ , chloraphinicol 250¥',
    002: 'Paracetamol 300¥ ,Doliprane 250¥',
    003: 'Ubicap 300¥ , amoxy 250¥',
  });
  print("les medicaments des patients: $medicaments");

  //Recuperation des medicaments a la pharmacie
  medicamentsAchetes.addAll({
    001: ["Tetra 300¥", "chloraphinicol 250¥"],
    002: ["Paracetamol 400¥", "Doliprane 600¥"],
    003: ["Ubicap 200¥", "amoxy 500¥'"],
  });
  print(
    "\n la liste des patients ayant recupere leur medicaments : $medicamentsAchetes\n",
  );
}
