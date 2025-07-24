import 'dart:ffi';

void main(){
  // Map est un dictionnaire donc une collection contenant des paires de cles:valeurs
  Map sans_type_de_donnees = {};
  Map<String, int> avec_type_de_donnees = {
    "Annee":2025,
    "Jour":24
  };

  //1. Ajout d'un element dans une map
  sans_type_de_donnees.addAll({
    "age": 21,
    12: "Chris"  
  });
  print(sans_type_de_donnees);

  //2. Update 
  sans_type_de_donnees.update("age", (value) {return "Chris";}, ifAbsent: () => 'Mercury');
  sans_type_de_donnees.toString();
  print(sans_type_de_donnees);
  sans_type_de_donnees.updateAll((key, value) => {
    {
      "name": "Tshiv"
    }
  });

  print(sans_type_de_donnees);
}