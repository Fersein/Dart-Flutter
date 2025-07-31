void main() {
  print("******** System D'attribution De Mention ********");

  List<String> studentNames = ['James', 'Mouss', 'Christ', 'Claire', 'Jorvi'];

  Map subjectNScores = {
      'physique': 80,
      'svt': 80.99,
      'mathematique': 89,
      'discret math': 60,
      'Basketball': 98,
      'Football': 99,
    };

  Map<String, Map> courseAndScores = {
    'James': {
      'physique': 58.99,
      'svt': 80.99,
      'mathematique': 89,
      'discret math': 60,
      'Basketball': 70,
      'Football': 99,
    },
    'Mouss': {
      'physique': 85,
      'svt': 80.99,
      'mathematique': 83,
      'discret math': 60,
      'Basketball': 98,
      'Football': 99,
    },
    'Christ': {
      'physique': 82,
      'svt': 80.99,
      'mathematique': 81,
      'discret math': 60,
      'Basketball': 98,
      'Football': 99,
    },
    'Claire': {
      'physique': 70.99,
      'svt': 80.99,
      'mathematique': 89,
      'android': 90,
      'discret math': 60,
      'Basketball': 98,
    },
    'stdName': subjectNScores,
  };

  courseAndScores.forEach((stdName, subjectNScores) {
    double somme = 0.0;
    print("*" * 100);
    print("les notes de l'etudiant $stdName");
    for (var subject in subjectNScores.keys){
      print("$subject: ${subjectNScores[subject]}");
      var note = subjectNScores[subject];
      somme += note;      
    }
    var moyenne = somme / subjectNScores.length;
    print("Le total des notes fait: $somme");
    print("La moyenne fait: $moyenne");

    switch(moyenne){
      case < 60:
        print("Échoué avec une moyenne de $moyenne");
        break;
      
      case > 60:
        print("Échoué avec une moyenne de $moyenne");
        break;

      case < 60:
        print("Échoué avec une moyenne de $moyenne");
        break;

      case < 60:
        print("Échoué avec une moyenne de $moyenne");
        break;

      case < 60:
        print("Échoué avec une moyenne de $moyenne");
        break;
    }
    
    print("*" * 100);
  });
  // for (var name in studentNames) {
  //   var scores = courseAndScores[name];
  //   if (scores != null) {
  //     print("\t**** Scores for $name: ****");
  //     scores.forEach((course, score) {
  //       // if-else to figure out the grade
  //       String grade;
  //       if (score < 60) {
  //         grade = "Échoué";
  //       } else if (score < 70) {
  //         grade = "Passable";
  //       } else if (score < 80) {
  //         grade = "Bien";
  //       } else if (score < 90) {
  //         grade = "Très Bien";
  //       } else if (score <= 100) {
  //         grade = "Excellent";
  //       } else {
  //         grade = "Invalide";
  //       }
  //       // Print the result
  //       print("\t$course: $score - $grade");
  //     });
  //     // line entre chaque infos d'eleve
  //     print("");
  //   }
  // }
}
