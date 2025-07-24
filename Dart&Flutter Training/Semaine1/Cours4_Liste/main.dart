void main(){
  // List est une collection ordonnee qui ne contient que des valeurs uniques.
  //1. Creation d'une liste
  List sans_type_de_donnees = [12, "felix"];
  List<String> avec_type_de_donnees = ["Claire", "Chris", "Mouss"];

  //2. Ajout d'un element dans une liste
  sans_type_de_donnees.add("Mouss");
  print(sans_type_de_donnees);

  //2. Ajout de plusieurs elements dans une liste
  sans_type_de_donnees.addAll(["Claire", "Chris"]);
  print(sans_type_de_donnees);

  //3. Indexer les elements dans une liste
  String thirdPerson = sans_type_de_donnees[3];
  int number =  sans_type_de_donnees[0];
  print("La fille parmis nous c'est ${thirdPerson} et le nombre c'est $number");

  avec_type_de_donnees.insert(2, "Tshiv");
  print(avec_type_de_donnees);

  //4. Supprimer un element
  sans_type_de_donnees.remove("felix");
  print(sans_type_de_donnees);

  //5. Tout supprimer de la liste
  avec_type_de_donnees.clear();
  print(avec_type_de_donnees);

  //6. Obtenir la taille de la liste
  print("La taille de la premiere liste est ${sans_type_de_donnees.length}");

  //7. Pour toutes les operations et methodes pour les liste il suffit de mettre '.' apres la liste pour les voir
  Set listeToSet = sans_type_de_donnees.toSet();
  print(listeToSet);


  avec_type_de_donnees.insert(0, "Tshiv");
  print(avec_type_de_donnees);
}