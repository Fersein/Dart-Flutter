void main() {
  // Liste des employés (chaque employé est une Map)
  List<Map<String, dynamic>> employes = [
    {'nom': 'Chris Kuma', 'poste': 'Développeur', 'salaire': 4500.0},
    {'nom': 'Christian Goma', 'poste': 'Manager', 'salaire': 5500.0},
    {'nom': 'Jacques Moussoundi', 'poste': 'Développeur', 'salaire': 4800.0},
    {'nom': 'Claire Kanga', 'poste': 'RH', 'salaire': 3800.0},
  ];

  // Ajout d'un nouvel employé 
  ajouterEmploye(employes, 'Cephora Mercia', 'Designer', 4200.0);

  // Affichage par poste
  afficherEmployesParPoste(employes, 'Développeur');

  // Calcul et affichage de la masse salariale
  double masseSalariale = calculerMasseSalariale(employes);
  print('\n💵 Masse salariale totale: ${masseSalariale.toStringAsFixed(2)}€');
}

// Ajoute un nouvel employé
void ajouterEmploye(List<Map<String, dynamic>> employes, String nom, String poste, double salaire) {
  employes.add({
    'nom': nom,
    'poste': poste,
    'salaire': salaire,
  });
  print('✅ Employé ajouté: $nom ($poste)');

  // Vérification du bonus
  if (salaire > 5000) {
    print('   → Bonus possible pour $nom');
  }
}

// Affiche les employés d'un poste spécifique
void afficherEmployesParPoste(List<Map<String, dynamic>> employes, String poste) {
  print('\n👥 Employés au poste de "$poste":');
  bool trouve = false;

  for (var employe in employes) {
    if (employe['poste'] == poste) {
      trouve = true;
      print('- ${employe['nom']} (${employe['salaire']}€)');
      
      // Vérification du bonus
      if (employe['salaire'] > 5000) {
        print('  → Bonus possible pour ${employe['nom']}');
      }
    }
  }

  if (!trouve) {
    print('Aucun employé trouvé pour ce poste');
  }
}

// Calcule la masse salariale totale
double calculerMasseSalariale(List<Map<String, dynamic>> employes) {
  double total = 0.0;
  int employesBonus = 0;

  for (var employe in employes) {
    total += employe['salaire'];
    
    // Détection des employés éligibles au bonus
    if (employe['salaire'] > 5000) {
      employesBonus++;
    }
  }

  print('\n💰 ${employesBonus} employé(s) éligible(s) au bonus');
  return total;
}