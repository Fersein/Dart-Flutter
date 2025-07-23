void main(){
  // Variables
  // 1. Nombre entier
  /*
  int : identifiant pour nombre entier
  number: nom de la variable
  10: valeur
  = : assignment
  */
  int number  = 10;
  print(number);

  // 1.1. Addition
  int a = 10;
  int b = 15;
  int sum = a + b;
  print("La somme de a $a et b $b: ${sum}");

  // 1.2. Soustraction
  int sub = b - a;
  print("La soustraction de a $a et b $b: ${sub}");

  // 1.3. Multiplication
  int mult = a * b;
  print("La multiplication de a $a et b $b: ${mult}");

  // 1.4. Division
  double div = b / a; // Division retourne un nombre decimal  
  print("La division de b $b par a $a: ${div}");

  // 1.5. Modulo
  int mod = b % a; // Modulo retourne le reste de la division
  print("Le modulo de b $b par a $a: ${mod}");

  // 2. Nombre decimal
  double pi = 3.14;
  print(pi);

  // 3. Texte
  String name = "Claire";
  print(name);

  // Concatenation
  String greet = "Hello";
  String greetClaire = greet + " " + name;
  print(greetClaire);

  // 4. Booléen
  bool isTrue = true; // Vrai ou faux
  print(isTrue);

  // 5. Liste
  /*
  List : identifiant pour une liste
  String: type de donnees dans la liste
  fruits: nom de la variable
  ["Pomme", "Banane", "Orange"]: valeurs de la liste
  */
  List vide = [];
  List<String> fruits = ["Pomme", "Banane", "Orange"];
  print(fruits); 

  // 7. Set 
  Set names = {"Alice", "Bob", "Charlie"}; 
  print(names);

  // 8. Map
  // Un map ou dictionnaire est une collection de paires clé-valeur
  /* 
  Map : identifiant pour un map
  String: type de la clé  
  int: type de la valeur
  ages: nom de la variable
  */
  Map<String, int> ages = {
    "Alice": 30,
    "Bob": 25,
    "Charlie": 35
  };
  print(ages);

  // 9. Dynamic
  dynamic variable = 12;
  print(variable);
}