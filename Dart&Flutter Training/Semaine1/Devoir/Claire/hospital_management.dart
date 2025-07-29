void main() {
  List<String> departements_de_lhopital = [
    "Chirurgie",
    "Neurologie",
    "Dentaire",
    "Pediatrie",
    "Cardiologie",
    "Radiologie",
    "Gynecologie",
    "Urgences",
    "Psychiatrie",
  ];
  print(departements_de_lhopital);

  Map<dynamic, dynamic> dictionnaire_des_patients = {
    'HN001': {'Mak', 'Sephora', 19852630326, departements_de_lhopital[2]},
    'HN002': {'Mac', 'lysa', 12586930236, departements_de_lhopital[2]},
    'HN003': {'Mav', 'doche', 14769582369, departements_de_lhopital[0]},
    'HN004': {'Bouity', 'Freddy', 14969360325, departements_de_lhopital[4]},
    'HN005': {'Mberry', 'Clara', 12636036902, departements_de_lhopital[3]},
    'HN006': {'jean', 'Pierre', 15836263985, departements_de_lhopital[6]},
    'HN007': {'Mac', 'jessie', 17569633203, departements_de_lhopital[5]},
    'HN008': {'Mike', 'Doriane', 15969632369, departements_de_lhopital[8]},
    'HN009': {'Pierre', 'James', 12536253626, departements_de_lhopital[7]},
  };
  print(dictionnaire_des_patients);

  Map<dynamic, dynamic> paiements_de_consultation = {
    'HN001': 1000,
    'HN002': 2500,
    'HN003': 500,
    'HN004': 600,
    'HN005': 2000,
    'HN006': 1000,
    'HN007': 800,
    'HN008': 300,
    'HN009': 700,
  };
  print(paiements_de_consultation);

  Map<dynamic, dynamic> historiques_medicaux = {
    'Dr Ricardo': {
      'HN005'
          'HN003',
    },
    'Dr Claude': {
      'HN001'
          'HN007',
    },
    'Dr Franc': {
      'HN008'
          'HN006',
    },
    'Dr Maria': {'HN009', 'HN002'},

    'Dr Marvie': 'HN004',
  };
  print(historiques_medicaux);

  Map<dynamic, dynamic> paiement_des_medicaments = {
    'HN001': {'Doliprane 100', 'Ubicap 200'},
    'HN002': {'Parcetamol 450', 'Amoxy 500'},
    'HN003': {'Parcetamol 450', 'Amoxy 400'},
    'HN004': {'Parcetamol 450', 'Amoxy 250'},
    'HN005': {'Parcetamol 450', 'Amoxy 700'},
    'HN006': {'Parcetamol 450', 'Amoxy 800'},
    'HN007': {'Parcetamol 450', 'Amoxy 900'},
    'HN008': {'Parcetamol 450', 'Amoxy 350'},
    'HN009': {'Parcetamol 450', 'Amoxy 550'},
  };
  print(paiement_des_medicaments);

  Map<dynamic, dynamic> pharmacie = {
    'HN001':{'Medicaments':'Paracetamol, Amoxy', 'Total':'180'},
      'HN002':{'Medicaments':'doliprane, Amoxy', 'Total':'800'},
        'HN003':{'Medicaments':'tetra, Tanzol', 'Total':'4300'},
          'HN004':{'Medicaments':'Paracetamol, Amoxy', 'Total':'700'},
            'HN005':{'Medicaments':'Paracetamol, Amoxy', 'Total':'600'},
              'HN006':{'Medicaments':'Paracetamol, Amoxy', 'Total':'250'},
                'HN007':{'Medicaments':'Paracetamol, Amoxy', 'Total':'150'},
                 'HN008':{'Medicaments':'Paracetamol, Amoxy', 'Total':'350'},
                    'HN009':{'Medicaments':'Paracetamol, Amoxy', 'Total':'550'},



  };
  print(pharmacie);
}
