void main() {
  // Enregistrement du patient à son arrivée
  var Patient = {
    'IdPatient': 001,
    'Nom': 'Kuma',
    'Prenom': 'Chris',
    'NumTel': '18851870565',
    'Dept': 'Urologie',
    'Sexe': 'M',
    'Ville': 'Nanjing',
    'Age': 24
  };
  print('Patient: $Patient');

  // Paiement des frais de consultation
  var Paiement = {
    'IdPatient': 001,
    'Montant': 100
  };
  print('Paiement: $Paiement');

  // Prise en charge par un médecin
  var Medecin = {
    'IdMedecin': 0123,
    'NomMed': 'Magic',
    'PrenomMed': 'Christian',
    'Historique': 'No',
    'Observations': 'No'
  };
  print('Medecin: $Medecin');

  // Prescription du médecin
  var Prescription = {
    'IdPatient': 001,
    'IdMedecin': 0123,
    'NomMed': 'Magic',
    'NomMedoc': 'Quinine'
  };
  print('Prescription: $Prescription');

  // Ordonnance
  var Ordonnance = {
    'NomMedoc': 'Quinine',
    'Montant': 3,
    'Observations': 'Malaria'
  };
  print('Ordonnance: $Ordonnance');

  // Récupération des médicaments à la pharmacie
  var Recuperation = {
    'IdPatient': 001,
    'NomMedoc': 'Quinine',
    'Montant': 3
  };
  print('Recuperation: $Recuperation');
}