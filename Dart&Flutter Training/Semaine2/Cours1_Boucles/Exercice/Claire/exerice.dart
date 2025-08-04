// import 'dart:html_common';

void main() {
  //  Vous êtes responsable des ressources humaines dans une entreprise locale C&G Tech.
  // Votre mission consiste à vérifier les paiements de chaque employé mois par mois tout au long de l’année.

  // Créez une liste contenant les noms des employés de l’entreprise, ainsi qu’un dictionnaire représentant leur historique de paie mensuel (mois, montant).

  // Affichez, pour chaque employé, l’historique complet de ses paiements.

  // 1. Creation d'une liste des noms des employés de l'entreprise
  List<dynamic> emplyeeNames = [];

  //2. Creation d'un dictionnaire de l'historique de paiement mensuel
  Map<dynamic, dynamic> paymentHistorique = {};

  emplyeeNames.addAll(["Christian", "Chris", "Mouss", "Claire"]);

  paymentHistorique.addAll({
    'Christian':
        'Janvier: 100, Fevrier: 100, Mars: 100, April: 100, Mai: 100, Juin: 100, Juillet: 100, Aout: 100, Septembre: 100, Octobre: 100, Novembre: 100, Decmbre: 100',

    'Chris':
        'Janvier: 100, Fevrier: 100, Mars: 100, April: 100, Mai: 100, Juin: 100, Juillet: 100, Aout: 100, Septembre: 100, Octobre: 100, Novembre: 100, Decmbre: 100',
    'Mouss':
        'Janvier: 200, Fevrier: 300, Mars: 300, April: 300, Mai: 300, Juin: 300, Juillet: 300, Aout: 300, Septembre: 300, Octobre: 300, Novembre: 300, Decmbre: 300',
    'Claire':
        'Janvier: 1300, Fevrier: 1200, Mars: 400, April: 400, Mai: 400, Juin: 400, Juillet: 400, Aout:400, Septembre: 400, Octobre: 400, Novembre: 400, Decmbre: 400',
  });

  for (int i = 0; i < emplyeeNames.length; i++) {
    print("${i} : Liste des noms de l'employes ${emplyeeNames[i]}");
  }

  paymentHistorique.forEach((k, v) {
    print("${k}:${v}\n");
  });

  

  emplyeeNames.forEach((emplyeeNames) {
    print("$emplyeeNames");
  });
}
