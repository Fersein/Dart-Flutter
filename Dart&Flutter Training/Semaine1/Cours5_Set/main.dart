void main(){
  // // Set est une collection non ordonnee qui ne contient que des valeurs uniques.
  Set sans_type_de_donnees = {12, "felix"};
  Set<String> avec_type_de_donnees = {"Claire", "Chris", "Mouss"};

  //1. Ajout d'un element
  sans_type_de_donnees.add("Mouss");
  print(sans_type_de_donnees);

  //2. Ajout de plusieurs elements
  sans_type_de_donnees.addAll({"Claire", "Chris"});
  print(sans_type_de_donnees);

  //3. Indexer les elements dans un set
  List temp = sans_type_de_donnees.toList();
  print(temp);
  print(temp[0]);
  print(sans_type_de_donnees.elementAt(0));

  //4. Pour toutes les operations et methodes pour les sets il suffit de mettre '.' apres la liste pour les voir
  print(sans_type_de_donnees.contains("Mouss"));
}