void main() {
  // Liste des livres (chaque livre est une Map)
  List<Map<String, dynamic>> bibliotheque = [
    {'titre': 'Le Petit Prince', 'auteur': 'Antoine de Saint-Exupéry', 'disponible': true},
    {'titre': '1984', 'auteur': 'George Orwell', 'disponible': true},
    {'titre': 'Dune', 'auteur': 'Frank Herbert', 'disponible': false},
    {'titre': 'L\'Étranger', 'auteur': 'Albert Camus', 'disponible': true},
    {'titre': 'Le Seigneur des Anneaux', 'auteur': 'J.R.R. Tolkien', 'disponible': true},
    {'titre': 'Harry Potter à l\'école des sorciers', 'auteur': 'J.K. Rowling', 'disponible': true},
    {'titre': 'Le Meilleur des mondes', 'auteur': 'Aldous Huxley', 'disponible': true},
    {'titre': 'Fahrenheit 451', 'auteur': 'Ray Bradbury', 'disponible': false},
    {'titre': 'Les Misérables', 'auteur': 'Victor Hugo', 'disponible': true},
    {'titre': 'Le Comte de Monte-Cristo', 'auteur': 'Alexandre Dumas', 'disponible': false},
    {'titre': 'Orgueil et Préjugés', 'auteur': 'Jane Austen', 'disponible': true},
    {'titre': 'Le Grand Gatsby', 'auteur': 'F. Scott Fitzgerald', 'disponible': true},
    {'titre': 'Crime et Châtiment', 'auteur': 'Fiodor Dostoïevski', 'disponible': false},
  ];

  // Affiche les livres disponibles
  afficherLivresDisponibles(bibliotheque);

  // Test d'emprunt
  emprunterLivre(bibliotheque, '1984');
  emprunterLivre(bibliotheque, 'Dune'); 
  emprunterLivre(bibliotheque, 'Harry Potter à l\'école des sorciers'); 
  emprunterLivre(bibliotheque, 'Le Petit Prince'); 
  emprunterLivre(bibliotheque, 'Le Comte de Monte-Cristo');  

  // Test de retour
  rendreLivre(bibliotheque, 'Dune');
  rendreLivre(bibliotheque, 'Le Seigneur des Anneaux'); 
  rendreLivre(bibliotheque, 'Le Petit Prince'); 
  rendreLivre(bibliotheque, 'Le Comte de Monte-Cristo');  

  // Affichage final
  print('\n=== ÉTAT FINAL DE LA BIBLIOTHÈQUE ===');
  afficherEtatComplet(bibliotheque);
}

// Affiche uniquement les livres disponibles
void afficherLivresDisponibles(List<Map<String, dynamic>> livres) {
  print('\n📚 LIVRES DISPONIBLES :');
  for (var livre in livres) {
    if (livre['disponible'] == true) {
      print('- "${livre['titre']}" par ${livre['auteur']}');
    }
  }
}

// Emprunt d'un livre
void emprunterLivre(List<Map<String, dynamic>> livres, String titre) {
  print('\nTentative d\'emprunt : "$titre"');
  
  bool trouve = false;
  
  for (var livre in livres) {
    if (livre['titre'] == titre) {
      trouve = true;
      if (livre['disponible']) {
        livre['disponible'] = false;
        print('✅ Emprunt réussi : "$titre"');
      } else {
        print('❌ Échec : "$titre" est déjà emprunté');
      }
      break;
    }
  }

  if (!trouve) {
    print('❌ Échec : "$titre" n\'existe pas dans la bibliothèque');
  }
}

// Rendre un livre
void rendreLivre(List<Map<String, dynamic>> livres, String titre) {
  print('\nTentative de retour : "$titre"');
  
  bool trouve = false;
  
  for (var livre in livres) {
    if (livre['titre'] == titre) {
      trouve = true;
      if (!livre['disponible']) {
        livre['disponible'] = true;
        print('✅ Retour réussi : "$titre"');
      } else {
        print('❌ Échec : "$titre" était déjà disponible');
      }
      break;
    }
  }

  if (!trouve) {
    print('❌ Échec : "$titre" n\'existe pas dans la bibliothèque');
  }
}

// Affiche l'état complet
void afficherEtatComplet(List<Map<String, dynamic>> livres) {
  for (var livre in livres) {
    String statut = livre['disponible'] ? 'Disponible' : 'Emprunté';
    print('- "${livre['titre']}" : $statut');
  }
}