void main(){
  List schools = ["NUIST", "HOHAI"];

  // for (var uni in schools){
  //   print(uni);
  // }

  // schools.forEach(
  //   (uni){
  //     print(uni);
  //   }
  // );

  for (int x=0; x < schools.length; x++){
    print("Index: $x");
    print(schools[x]);
  }
}