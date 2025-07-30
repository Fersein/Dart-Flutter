void main(){

  int age = 19;

  // Une contrainte pour realiser une instruction
  // 1. If else if et else
  /*
  if (condition){
    code a executer
  } else if(condition autre) {
    code a executer
  } else {
    code a executer
  }
  */

  // if (age < 18) {
  //   print("vous etes mineur");
  // } else if (age >= 18) {
  //   print("vous etes majeur");
  // } else {
  //   print("On te fout dehors");
  // }

  // 2. Condition a une seule ligne
  // age <= 18 ? print("vous etes mineur") : print("vous etes majeurs");

  // 3. Switch
  switch(age){
    case < 18:
      print("vous etes majeur");
      break;
    case >= 20:
      print("vous etes ado");
      break;
    default:
      print("On te fout dehors");
  }

  // break and continue
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var numb in numbers){
    if(numb == 5){
      continue;
    }    
    print(numb);
  }
}