import 'dart:core'; // Import optionnel (déjà inclus par défaut)

void main() async {
  // Liste des élèves
  List<String> eleves = ['Chris', 'Magic', 'Claire', 'Jacques', 'Cephora'];
  
  // Dictionnaire des notes par matière pour chaque élève
  Map<String, Map<String, double>> notesEleves = {
    'Chris': {'Math': 85.0, 'Français': 92.0, 'Anglais': 78.0},
    'Magic': {'Math': 72.0, 'Français': 65.0, 'Anglais': 58.0},
    'Claire': {'Math': 90.0, 'Français': 88.0, 'Anglais': 95.0},
    'Jacques': {'Math': 68.0, 'Français': 74.0, 'Anglais': 62.0},
    'Cephora': {'Math': 55.0, 'Français': 49.0, 'Anglais': 61.0},
  };

  // Boucle pour traiter chaque élève avec délai
  for (String eleve in eleves) {
    // Vérifie si l'élève a des notes
    if (notesEleves.containsKey(eleve)) {
      Map<String, double> notes = notesEleves[eleve]!;
      
      // Calcul de la moyenne (inline)
      double somme = 0.0;
      int nombreDeNotes = notes.length;
      for (double note in notes.values) {
        somme += note;
      }
      double moyenne = somme / nombreDeNotes;

      // Détermination de la mention (inline)
      String mention;
      if (moyenne < 60) {
        mention = 'Échoue';
      } else if (moyenne < 70) {
        mention = 'Passable';
      } else if (moyenne < 80) {
        mention = 'Bien';
      } else if (moyenne < 90) {
        mention = 'Très Bien';
      } else {
        mention = 'Excellent';
      }

      // Affichage avec délai
      print('Voici les résultats de $eleve:');
      print('Notes: $notes');
      print('Moyenne: ${moyenne.toStringAsFixed(1)}');
      print('Mention: $mention');
      print('-------------------');
      await Future.delayed(Duration(seconds: 1)); 
    } else {
      print('$eleve n\'a pas de notes enregistrées.');
    }
  }
}