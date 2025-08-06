void main(){
  List<String> names = ["Chris", "Claire", "Mouss"];

  print("Voici les etudiants de la formation Dart & Flutter $names");

  // Une boucle permet de faire une repetition
  // 1. Structure
  // 1.1. for loop
  /*
  for (initialisation, condition, incrementation){
    code a executer;
  }
  */

  for (int i=0; i < names.length; i++){
    print(i);
    print("Bonjour ${names[i]}");
  }

  // 1.2. while loop
  /*
  initialisation
  while (condition) {
    code a executer
    incrementation
  }
  */
  int j = 0;
  while (j < names.length){
    print(j);
    print("${names[j]} est smart.");
    j++;
  }

  // 1.3. do while loop
  /*
  initialisation
  do {
    code a executer
    incrementation
  } while (condition);
  */

  int k = 0;
  do {
    print(k);
    print("${names[k]} is smart");
    k++;
  } while(k < names.length);

  // 2. Excepttion pour les listes
  // forEach
  /*
  list.forEach(
    (parametre) {
      parametre
    }
  );
  */
  names.forEach(
    (name){
      print("Mbote $name");
    } 
  );

  /*
    Exception
  */
  // Affichage d'une variable seule
  dynamic lastName = "Kanga ";
  dynamic firstName = "Claire";
  print(lastName);

  // Affichage d'une variable dans une string ou un texte
  print("Elle s'appelle $lastName");

  // Affichage de plusieurs variables dans une string ou texte
  int z = 0;
  print("Elle s'appelle $names[0] ${names[z]}");
}

void greet(name){

}