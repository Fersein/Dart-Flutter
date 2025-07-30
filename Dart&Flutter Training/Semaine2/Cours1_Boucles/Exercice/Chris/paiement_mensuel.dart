import 'dart:async';
import 'dart:io';
import 'dart:convert';

void main() async {  
  // Affichage du message de bienvenue
  print('BIENVENUE DANS LE SYSTÈME DE GESTION DES PAIEMENTS MENSUELS DES EMPLOYÉS');
  await Future.delayed(Duration(seconds: 2));  
  print('---------------------------------------------------'); 

  // Liste des noms des employés
  List<String> noms = ["Chris Kuma", "Claire Kanga", "Jacques Moussoundi"];
  
  // Dictionnaire des paiements
  Map<String, Map<String, int>> paiements = {
    "Chris Kuma": {
      "Janvier": 25000,
      "Février": 25000,
      "Mars": 26000,
      "Avril": 27000,
      "Mai": 28000,
      "Juin": 29000,
      "Juillet": 30000,  
      "Août": 31000,
      "Septembre": 32000,
      "Octobre": 33000,
      "Novembre": 34000,
      "Décembre": 35000,
    },
    "Claire Kanga": {
      "Janvier": 20000,
      "Février": 30000,
      "Mars": 31000,
      "Avril": 32000,
      "Mai": 33000,
      "Juin": 34000,
      "Juillet": 35000,
      "Août": 36000, 
      "Septembre": 37000,
      "Octobre": 38000,
      "Novembre": 39000,
      "Décembre": 40000,
    },
    "Jacques Moussoundi": {
      "Janvier": 22000,
      "Février": 18000,
      "Mars": 23000,
      "Avril": 24000,
      "Mai": 25000,
      "Juin": 26000,
      "Juillet": 27000,
      "Août": 28000,
      "Septembre": 29000,
      "Octobre": 30000,
      "Novembre": 31000,
      "Décembre": 38000,
    }
  };
  
  // Affichage des informations
  await Future.delayed(Duration(seconds: 2));  
  print("Liste des employés: $noms");

  paiements.forEach((nom, value) { 
    print("-"*100);
    print("Historique de paiement de $nom");
    print("-"*100);
    for (var mois in value.keys){
      print("$mois: ${value[mois]}");
    }
  });
}