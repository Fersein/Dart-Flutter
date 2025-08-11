class CompteBancaire{
  double _solde = 0.0;

  set setSolde(double montant){
    if (montant >= _solde){
      _solde = montant;
    } else {
      print("Le solde ne peut pas etre negatif");
    }
  }

  double get getSolde{
    return _solde;
  }
  
  void deposer(double montant){
    if (montant > 0) _solde += montant;
  }

  void retirer(double montant){
    if (montant <= _solde) _solde -= montant;
  }
}
