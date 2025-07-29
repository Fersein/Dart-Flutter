void main() {
  print("\t\t\t\t********** Devoir - Système de gestion d'hôpital **********");
  print("");

  List<String> departementDeLHopital = [
    "Pediatrie",
    "Radiologie",
    "Stomatologie",
    "Urologie",
  ];
  print("List des differents departement: $departementDeLHopital");

  print("");

  // 1. Enregistrement du patient
  print("\t\t\t\t********** Donnees du patient a l'enregistrement **********");
  Map<String, dynamic> patientID = {
    'Information du patient ': {
      'Patient Id': 202103010144,
      'Nom du patient': 'mouss',
      'Prenom du patient': 'james',
      'Numero tel du patient': 002420668571809,
    },
    'Departement de Consultation du patient': {
      'Department du patient': 'Urologie',
    },
  };
  print(patientID);

  print("");

  // 2. Paiement des frais de consultation
  print(
    "\t\t\t\t********** Donnees de paiement des frais de consultation **********",
  );
  Map<String, dynamic> paiementDesFrais = {
    'Information du patient(ID du patient) ': {
      'Patient Id': 202103010144,
      'Nom du patient': 'mouss',
      'Prenom du patient': 'james',
      'Numero tel du patient': 002420668571809,
    },
    'Montant a payer': {'montant': '1500.00 fcfa'},
  };
  print(paiementDesFrais);

  print("");

  // 3. Prise en charge par un medecin plus info et departement du medecin
  print(
    "\t\t\t\t********** Donnees de prise en charge par un medecin **********",
  );
  Map<String, dynamic> priseEnCharge = {
    'Information du medecin 1': {
      'Departement 1': 'Pediatrie',
      'Nom du medecin': 'Dr jacques',
    },
    'Information du medecin 2': {
      'Departement 2': 'Radiologie',
      'Nom du medecin': 'Dr jacques',
    },
    'Information du medecin 3': {
      'Nom du medecin': 'Dr Mouss',
      'Departement': 'Stomatologie',
    },
    'Information du medecin 4': {
      'Nom du medecin': 'Dr Valdaurey',
      'Departement': 'Urologie',
    },
  };
  print(priseEnCharge);

  priseEnCharge.addAll({
    'Information du patient(ID du patient) ': {
      'Patient Id': 202103010144,
      'Nom du patient': 'mouss',
      'Prenom du patient': 'james',
      'Numero tel du patient': 002420668571809,
    },
    'historique ': {'observation du medecin': 'Difficultees de bien uriner'},
    'Medecins responsable': {'Noms': 'Dr Valdaurey', 'Departement': 'Urologie'},
  });
  print(priseEnCharge);

  print("");

  // 4. Prescription des medicaments
  print(
    "\t\t\t\t********** Donnees de prescription des medicaments **********",
  );
  Map<String, dynamic> prescriptionDesMedicaments = {
    'Information du patient(ID du patient) ': {
      'Patient Id': 202103010144,
      'Nom du patient': 'mouss',
      'Prenom du patient': 'james',
      'Numero tel du patient': 002420668571809,
    },
    'Medicaments & prix': {
      'Paracetamol (500mg)': '550 fcfa',
      'Panadol (500mg)': '650 fcfa',
      'Ibuprofene (500mg)': '400 fcfa',
    },
  };
  print(prescriptionDesMedicaments);

  print("");

  // 5. Recuperation des medicaments a la pharmacie
  print(
    "\t\t\t\t********** Donnees de recuperation des medicaments **********",
  );
  Map<String, dynamic> medicamentsAlaPharmacie = {
    'Information du patient(ID du patient) ': {
      'Patient Id': 202103010144,
      'Nom du patient': 'mouss',
      'Prenom du patient': 'james',
      'Numero tel du patient': 002420668571809,
    },
    'Medicaments & montants': {
      'Paracetamol (500mg)': '550 fcfa',
      'Panadol (500mg)': '650 fcfa',
      'Ibuprofene (500mg)': '400 fcfa',
    },
    'Montant total a payer': {'montant': '1500.00 fcfa'},
  };
  print("medicamentsAlaPharmacie: $medicamentsAlaPharmacie");
}
