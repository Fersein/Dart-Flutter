import 'dart:io';

// Variables globales pour stocker les données
List<Map<String, dynamic>> eleves = [];
List<Map<String, dynamic>> enseignants = [];
double tresorerie = 0.0;
List<Map<String, dynamic>> historiqueEntrees = [];
List<Map<String, dynamic>> historiqueSorties = [];

// Fonctions pour la gestion des élèves
void inscrireEleve() {
  print("\n=== Inscription d'un nouvel élève ===");
  
  stdout.write("Entrez le nom de l'élève: ");
  String? nom = stdin.readLineSync();
  
  stdout.write("Entrez le prénom de l'élève: ");
  String? prenom = stdin.readLineSync();
  
  stdout.write("Entrez la date de naissance (JJ/MM/AAAA): ");
  DateTime dateNaissance = DateTime.parse(stdin.readLineSync()!.replaceAll('/', '-'));
  
  print("Sélectionnez le cycle (1: Primaire, 2: Collège, 3: Lycée):");
  int choixCycle = int.parse(stdin.readLineSync()!);
  String cycle;
  double fraisInscription;
  
  switch (choixCycle) {
    case 1:
      cycle = 'Primaire';
      fraisInscription = 5000;
      break;
    case 2:
      cycle = 'Collège';
      fraisInscription = 10000;
      break;
    case 3:
      cycle = 'Lycée';
      fraisInscription = 15000;
      break;
    default:
      print("Choix invalide, défaut: Primaire");
      cycle = 'Primaire';
      fraisInscription = 5000;
  }
  
  String id = 'EL-${DateTime.now().millisecondsSinceEpoch}'; // Génération d'un ID unique
  
  eleves.add({
    'id': id,
    'nom': nom,
    'prenom': prenom,
    'dateNaissance': dateNaissance,
    'cycle': cycle,
    'confirmationRentree': false,
    'notesTrimestre1': {},
    'notesTrimestre2': {},
    'notesTrimestre3': {},
    'paiements': [],
  });
  
  enregistrerPaiement(id, fraisInscription, 'Inscription');
  print("Élève inscrit avec succès! ID: $id");
}

void confirmerRentree() {
  print("\n=== Confirmation de rentrée ===");
  print("Entrez l'ID de l'élève:");
  String id = stdin.readLineSync()!;
  
  bool trouve = false;
  int i = 0;
  while (i < eleves.length && !trouve) {
    if (eleves[['id']i] == id) {
      eleves[i]['confirmationRentree'] = true;
      print("Rentrée confirmée pour ${eleves[i]['prenom']} ${eleves[i]['nom']}");
      trouve = true;
    }
    i++;
  }
  
  if (!trouve) {
    print("Aucun élève trouvé avec cet ID");
  }
}

void enregistrerPaiement(String eleveId, double montant, String motif) {
  tresorerie += montant;
  historiqueEntrees.add({
    'date': DateTime.now(),
    'montant': montant,
    'motif': motif,
  });
  
  bool eleveTrouve = false;
  for (int i = 0; i < eleves.length; i++) {
    if (eleves[i]['id'] == eleveId) {
      eleves[i]['paiements'].add(montant);
      print("Paiement de $montant FCFA enregistré pour ${eleves[i]['prenom']} ${eleves[i]['nom']} ($motif)");
      eleveTrouve = true;
      break;
    }
  }
  
  if (!eleveTrouve) {
    print("Élève non trouvé, paiement non attribué");
  }
}

// Fonctions pour la gestion des enseignants
void ajouterEnseignant() {
  print("\n=== Ajout d'un nouvel enseignant ===");
  
  print("Entrez le nom de l'enseignant:");
  String nom = stdin.readLineSync()!;
  
  print("Entrez le prénom de l'enseignant:");
  String prenom = stdin.readLineSync()!;
  
  print("Entrez le salaire mensuel:");
  double salaire = double.parse(stdin.readLineSync()!);
  
  List<String> matieres = [];
  bool ajouterAutre = true;
  do {
    print("Entrez une matière enseignée:");
    matieres.add(stdin.readLineSync()!);
    
    print("Ajouter une autre matière? (o/n)");
    ajouterAutre = stdin.readLineSync()!.toLowerCase() == 'o';
  } while (ajouterAutre);
  
  String id = 'ENS-${DateTime.now().millisecondsSinceEpoch}';
  enseignants.add({
    'id': id,
    'nom': nom,
    'prenom': prenom,
    'matieresEnseignees': matieres,
    'salaireMensuel': salaire,
    'paiements': [],
  });
  
  print("Enseignant ajouté avec succès! ID: $id");
}

void payerSalaires() {
  print("\n=== Paiement des salaires ===");
  double totalSalaires = 0.0;
  
  for (int i = 0; i < enseignants.length; i++) {
    if (tresorerie >= enseignants[i]['salaireMensuel']) {
      tresorerie -= enseignants[i]['salaireMensuel'];
      totalSalaires += enseignants[i]['salaireMensuel'];
      enseignants[i]['paiements'].add(DateTime.now());
      historiqueSorties.add({
        'date': DateTime.now(),
        'montant': enseignants[i]['salaireMensuel'],
        'motif': 'Salaire ${enseignants[i]['prenom']} ${enseignants[i]['nom']}',
      });
      print("Salaire payé: ${enseignants[i]['prenom']} ${enseignants[i]['nom']} - ${enseignants[i]['salaireMensuel']} FCFA");
    } else {
      print("Fonds insuffisants pour payer ${enseignants[i]['prenom']} ${enseignants[i]['nom']}");
    }
  }
  
  print("Total des salaires payés ce mois: $totalSalaires FCFA");
}

// Fonctions pour les évaluations
double calculerMoyenneTrimestre(Map<String, dynamic> eleve, int trimestre) {
  Map<String, double> notes;
  switch (trimestre) {
    case 1:
      notes = Map<String, double>.from(eleve['notesTrimestre1']);
      break;
    case 2:
      notes = Map<String, double>.from(eleve['notesTrimestre2']);
      break;
    case 3:
      notes = Map<String, double>.from(eleve['notesTrimestre3']);
      break;
    default:
      return 0.0;
  }

  if (notes.isEmpty) return 0.0;

  if (eleve['cycle'] == 'Primaire') {
    double somme = 0.0;
    notes.forEach((matiere, note) {
      somme += note;
    });
    return somme / notes.length;
  } else {
    // Collège ou Lycée (avec coefficients)
    double sommeNotesPonderees = 0.0;
    double sommeCoefficients = 0.0;
    
    notes.forEach((matiere, note) {
      double coefficient = getCoefficient(matiere);
      sommeNotesPonderees += note * coefficient;
      sommeCoefficients += coefficient;
    });
    
    return sommeNotesPonderees / sommeCoefficients;
  }
}

double getCoefficient(String matiere) {
  // Coefficients simplifiés
  Map<String, double> coefficients = {
    'Maths': 4.0,
    'Français': 3.0,
    'Anglais': 2.0,
    'Histoire': 2.0,
    'SVT': 2.0,
    'Physique': 3.0,
  };
  return coefficients[matiere] ?? 1.0;
}

void saisirNotes() {
  print("\n=== Saisie des notes ===");
  print("Entrez le trimestre (1, 2 ou 3):");
  int trimestre = int.parse(stdin.readLineSync()!);
  
  print("Entrez l'ID de l'élève:");
  String eleveId = stdin.readLineSync()!;
  
  Map<String, dynamic>? eleve;
  for (int i = 0; i < eleves.length; i++) {
    if (eleves[i]['id'] == eleveId) {
      eleve = eleves[i];
      break;
    }
  }
  
  if (eleve == null) {
    print("Élève non trouvé");
    return;
  }
  
  Map<String, double> notes = {};
  bool continuer = true;
  while (continuer) {
    print("Entrez le nom de la matière:");
    String matiere = stdin.readLineSync()!;
    
    print("Entrez la note:");
    double note = double.parse(stdin.readLineSync()!);
    
    notes[matiere] = note;
    
    print("Ajouter une autre note? (o/n)");
    continuer = stdin.readLineSync()!.toLowerCase() == 'o';
  }
  
  switch (trimestre) {
    case 1:
      eleve['notesTrimestre1'] = notes;
      break;
    case 2:
      eleve['notesTrimestre2'] = notes;
      break;
    case 3:
      eleve['notesTrimestre3'] = notes;
      break;
    default:
      print("Trimestre invalide");
  }
  
  print("Notes enregistrées avec succès!");
}

void genererBulletin() {
  print("\n=== Génération de bulletin ===");
  print("Entrez l'ID de l'élève:");
  String eleveId = stdin.readLineSync()!;
  
  Map<String, dynamic>? eleve;
  for (int i = 0; i < eleves.length; i++) {
    if (eleves[i]['id'] == eleveId) {
      eleve = eleves[i];
      break;
    }
  }
  
  if (eleve == null) {
    print("Élève non trouvé");
    return;
  }
  
  print("\n=== BULLETIN SCOLAIRE ===");
  print("Élève: ${eleve['prenom']} ${eleve['nom']}");
  print("Cycle: ${eleve['cycle']}");
  
  for (int t = 1; t <= 3; t++) {
    print("\nTrimestre $t:");
    Map<String, double> notes;
    switch (t) {
      case 1:
        notes = Map<String, double>.from(eleve['notesTrimestre1']);
        break;
      case 2:
        notes = Map<String, double>.from(eleve['notesTrimestre2']);
        break;
      case 3:
        notes = Map<String, double>.from(eleve['notesTrimestre3']);
        break;
      default:
        notes = {};
    }
    
    notes.forEach((matiere, note) {
      print("$matiere: $note");
    });
    
    double moyenne = calculerMoyenneTrimestre(eleve, t);
    print("MOYENNE TRIMESTRIELLE: ${moyenne.toStringAsFixed(2)}");
  }
  
  double moyenneT1 = calculerMoyenneTrimestre(eleve, 1);
  double moyenneT2 = calculerMoyenneTrimestre(eleve, 2);
  double moyenneT3 = calculerMoyenneTrimestre(eleve, 3);
  double moyenneAnnuelle = (moyenneT1 + moyenneT2 + moyenneT3) / 3;
  print("\nMOYENNE ANNUELLE: ${moyenneAnnuelle.toStringAsFixed(2)}");
}

void genererClassement() {
  print("\n=== Classement des élèves ===");
  print("Entrez le cycle (Primaire, Collège, Lycée):");
  String cycle = stdin.readLineSync()!;
  
  print("Entrez le trimestre (1, 2, 3 ou 0 pour annuel):");
  int trimestre = int.parse(stdin.readLineSync()!);
  
  // Création d'une liste pour le classement
  List<Map<String, dynamic>> classement = [];
  
  for (int i = 0; i < eleves.length; i++) {
    if (eleves[i]['cycle'] == cycle && eleves[i]['confirmationRentree']) {
      double moyenne;
      if (trimestre == 0) {
        double t1 = calculerMoyenneTrimestre(eleves[i], 1);
        double t2 = calculerMoyenneTrimestre(eleves[i], 2);
        double t3 = calculerMoyenneTrimestre(eleves[i], 3);
        moyenne = (t1 + t2 + t3) / 3;
      } else {
        moyenne = calculerMoyenneTrimestre(eleves[i], trimestre);
      }
      
      if (moyenne > 0) {
        classement.add({
          'eleve': eleves[i],
          'moyenne': moyenne,
        });
      }
    }
  }
  
  // Tri manuel (sans utiliser sort)
  for (int i = 0; i < classement.length - 1; i++) {
    for (int j = i + 1; j < classement.length; j++) {
      if (classement[i]['moyenne'] < classement[j]['moyenne']) {
        var temp = classement[i];
        classement[i] = classement[j];
        classement[j] = temp;
      }
    }
  }
  
  // Affichage
  print("\n=== CLASSEMENT - $cycle - ${trimestre == 0 ? 'Annuel' : 'Trimestre $trimestre'} ===");
  for (int i = 0; i < classement.length; i++) {
    var eleve = classement[i]['eleve'];
    print("${i + 1}. ${eleve['prenom']} ${eleve['nom']}: ${classement[i]['moyenne'].toStringAsFixed(2)}");
  }
}

// Fonctions financières
void genererBilanFinancier() {
  print("\n=== BILAN FINANCIER ===");
  print("Trésorerie actuelle: $tresorerie FCFA");
  
  double totalEntrees = 0.0;
  for (int i = 0; i < historiqueEntrees.length; i++) {
    totalEntrees += historiqueEntrees[i]['montant'];
  }
  
  double totalSorties = 0.0;
  for (int i = 0; i < historiqueSorties.length; i++) {
    totalSorties += historiqueSorties[i]['montant'];
  }
  
  print("\nTotal des entrées: $totalEntrees FCFA");
  print("Total des sorties: $totalSorties FCFA");
  print("Solde net: ${totalEntrees - totalSorties} FCFA");
  
  // Détails par catégorie
  print("\nDétails des entrées:");
  print("- Inscriptions: ${calculerTotalInscriptions()} FCFA");
  print("- Frais mensuels: ${calculerTotalFraisMensuels()} FCFA");
  
  print("\nDétails des sorties:");
  print("- Salaires enseignants: ${calculerTotalSalaires()} FCFA");
}

double calculerTotalInscriptions() {
  double total = 0.0;
  for (int i = 0; i < historiqueEntrees.length; i++) {
    double montant = historiqueEntrees[i]['montant'];
    if (montant == 5000 || montant == 10000 || montant == 15000) {
      total += montant;
    }
  }
  return total;
}

double calculerTotalFraisMensuels() {
  double total = 0.0;
  for (int i = 0; i < historiqueEntrees.length; i++) {
    double montant = historiqueEntrees[i]['montant'];
    if (montant != 5000 && montant != 10000 && montant != 15000) {
      total += montant;
    }
  }
  return total;
}

double calculerTotalSalaires() {
  double total = 0.0;
  for (int i = 0; i < historiqueSorties.length; i++) {
    total += historiqueSorties[i]['montant'];
  }
  return total;
}

// Menu principal
void afficherMenu() {
  print("\n=== SYSTÈME DE GESTION SCOLAIRE MARIA LA BELLE ===");
  print("1. Gestion des élèves");
  print("2. Gestion des enseignants");
  print("3. Gestion des évaluations");
  print("4. Gestion financière");
  print("5. Quitter");
  print("Choisissez une option:");
}

void menuGestionEleves() {
  bool continuer = true;
  while (continuer) {
    print("\n=== GESTION DES ÉLÈVES ===");
    print("1. Inscrire un nouvel élève");
    print("2. Confirmer la rentrée");
    print("3. Enregistrer un paiement");
    print("4. Lister tous les élèves");
    print("5. Retour au menu principal");
    print("Choisissez une option:");
    
    int choix = int.parse(stdin.readLineSync()!);
    switch (choix) {
      case 1:
        inscrireEleve();
        break;
      case 2:
        confirmerRentree();
        break;
      case 3:
        print("Entrez l'ID de l'élève:");
        String id = stdin.readLineSync()!;
        print("Entrez le montant:");
        double montant = double.parse(stdin.readLineSync()!);
        enregistrerPaiement(id, montant, "Frais mensuels");
        break;
      case 4:
        print("\n=== LISTE DES ÉLÈVES ===");
        for (int i = 0; i < eleves.length; i++) {
          print("${eleves[i]['id']}: ${eleves[i]['prenom']} ${eleves[i]['nom']} (${eleves[i]['cycle']}) - ${eleves[i]['confirmationRentree'] ? 'Confirmé' : 'Non confirmé'}");
        }
        break;
      case 5:
        continuer = false;
        break;
      default:
        print("Option invalide");
    }
  }
}

void menuGestionEnseignants() {
  bool continuer = true;
  while (continuer) {
    print("\n=== GESTION DES ENSEIGNANTS ===");
    print("1. Ajouter un enseignant");
    print("2. Payer les salaires");
    print("3. Lister tous les enseignants");
    print("4. Retour au menu principal");
    print("Choisissez une option:");
    
    int choix = int.parse(stdin.readLineSync()!);
    switch (choix) {
      case 1:
        ajouterEnseignant();
        break;
      case 2:
        payerSalaires();
        break;
      case 3:
        print("\n=== LISTE DES ENSEIGNANTS ===");
        for (int i = 0; i < enseignants.length; i++) {
          print("${enseignants[i]['id']}: ${enseignants[i]['prenom']} ${enseignants[i]['nom']} - ${enseignants[i]['salaireMensuel']} FCFA/mois");
          print("Matières: ${(enseignants[i]['matieresEnseignees'] as List).join(', ')}");
        }
        break;
      case 4:
        continuer = false;
        break;
      default:
        print("Option invalide");
    }
  }
}

void menuGestionEvaluations() {
  bool continuer = true;
  while (continuer) {
    print("\n=== GESTION DES ÉVALUATIONS ===");
    print("1. Saisir des notes");
    print("2. Générer un bulletin");
    print("3. Générer un classement");
    print("4. Retour au menu principal");
    print("Choisissez une option:");
    
    int choix = int.parse(stdin.readLineSync()!);
    switch (choix) {
      case 1:
        saisirNotes();
        break;
      case 2:
        genererBulletin();
        break;
      case 3:
        genererClassement();
        break;
      case 4:
        continuer = false;
        break;
      default:
        print("Option invalide");
    }
  }
}

void menuGestionFinanciere() {
  bool continuer = true;
  while (continuer) {
    print("\n=== GESTION FINANCIÈRE ===");
    print("1. Générer un bilan financier");
    print("2. Afficher la trésorerie");
    print("3. Retour au menu principal");
    print("Choisissez une option:");
    
    int choix = int.parse(stdin.readLineSync()!);
    switch (choix) {
      case 1:
        genererBilanFinancier();
        break;
      case 2:
        print("\nTrésorerie actuelle: $tresorerie FCFA");
        break;
      case 3:
        continuer = false;
        break;
      default:
        print("Option invalide");
    }
  }
}

void main() {
  bool quitter = false;
  do {
    afficherMenu();
    int choix = int.parse(stdin.readLineSync()!);
    
    switch (choix) {
      case 1:
        menuGestionEleves();
        break;
      case 2:
        menuGestionEnseignants();
        break;
      case 3:
        menuGestionEvaluations();
        break;
      case 4:
        menuGestionFinanciere();
        break;
      case 5:
        quitter = true;
        print("Fermeture du système...");
        break;
      default:
        print("Option invalide, veuillez réessayer");
    }
  } while (!quitter);
}