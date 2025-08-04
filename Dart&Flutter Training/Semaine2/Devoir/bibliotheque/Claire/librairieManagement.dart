void main() {
  print("Welcome to CM Librairy");

  //1. creation de la liste des livres
  List<Map<String, dynamic>> livres = [
    {"titre": "Le Pleurer rire", "auteur": "Henry Lopes", "disponible": true},
    {"titre": "Acceptes toi", "auteur": "Joyce Meyer", " dsponible": true},
    {
      "Titre": "The Force of Freedom",
      "Auteur": "David Oyedepo",
      " dsponible": false,
    },
  ];
  List<String> titre = [
    "Le Pleurer rire",
    "Acceptes toi",
    "The Force of Freedom",
  ];

  //2.Fonction pour l'affichage des livres disponibles a l'emprunt
  void afficherLivresDisponibles() {
    print("Livres disponibles");
    for (var livre in livres) {
      if (livre["disponible"] == true) {
        print("Voici ${livre["titre"]} ecrit par${livre["auteur"]}");
      }
    }
  }

  //3. Creation de la fonction pour l'emprunt du livre
  void emprunterLivre(String titre) {
    print("Emprunter un livre");
    for (var livre in livres) {
      if (livre["disponible"] == false) {
        print("${livre["titre"]} n'est pas disponible");
      }
    }
  }

  //4. foction pour rendre un livre apres l'emprunt
  void rendreLivre(String titre) {
    print("Rendre un livre ");

    print(" Le livre${livres} a ete rendu  avec succes");
  }

  //5.Affichage de l'etat complet de tous les livres
  for (var livre in livres) {
    print("${livre["titre"]}est disponible: ${livre["disponible"]}");
  }
}
