void main(){
  // Variable globale
  // Accessible par toutes les fonctions, methode, classe etc.\
  String name = "Claire"; 
  print(name);
  // String person = greetMe("Mouss");
  // print(person); // person a ete defini de facon locale
  greetings(name); // name a ete defini de facon globale
  
}


// Variable locale
// Accessible que par la fonction ou classe qui l'a 
void greetings(String person){
  person = "Claire";
  print("Salut $person");
}

// greetMe(String person) {
//   return person;
// }