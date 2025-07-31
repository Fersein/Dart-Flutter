void main() {
    
    sayHi();

    sayHello();
    String hello = sayHello();
    print(hello);

    require(person: "Claire");

    register();

}

// Une fonction est un block de code qui est reutisable
// On a deux types de fonctions selon que l'on retour quelque chos ou pas 
// 1. Fonction void 
// ces fonctions n'ont pas de return 

void sayHi(){
    print("Hi");
}

// 2. fonctions return 
// ces fonctions incluent un return 
sayHello(){
  return "Hello";
}

// On a deux types de fonctions selon qu'il y a des parametres ou pas
// 3. fonction sans parametres
saySeeYou(){
  return "See you soon!";
}

// 4. Fonctions avec parametres
sayGoodBye(String person){
  return "GoodBye $person";
}

// 5. Avec required
void require({required String person}){
  print("$person is my friend");
}

// 6. Fonctions avec parametres initialises
void register({String student = "Claire"}){
  print("$student is the best student ever.");
}

// 7. Fonctions avec type predefinis
bool isBeatiful(){
  return true;
}

String name(){
  return "Claire";
}
