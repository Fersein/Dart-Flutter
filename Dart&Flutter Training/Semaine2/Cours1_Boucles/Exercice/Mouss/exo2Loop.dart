void main() {
  // List
  List<String> nom_des_employes = ["James", "Mouss", "Valdo", "Herder"];
  Map<String, double> historique_de_paye = {
    "James": 284995.09,
    "Mouss": 347583.02,
    "Valdo": 127583.04,
    "Herder": 577583.05,
    "Destin": 345632.01,
  };
  print("\t**** C&G Tech. List des employes et leur salaire ****");
  for (int i = 0; i < nom_des_employes.length; i++) {
    String name = nom_des_employes[i];
    double? historique_de_payes = historique_de_paye[name];
    print("\t\t\t|| $name: \$${historique_de_payes} ||");
  }
  // int i = 0;
  // while (i < nom_des_employes.length) {
  //   String name = nom_des_employes[i];
  //   double? historique_de_payes = historique_de_paye[name];
  //   i++;
  //   print("\t\t\t|| $name: \$${historique_de_payes} ||");
  // }
}
