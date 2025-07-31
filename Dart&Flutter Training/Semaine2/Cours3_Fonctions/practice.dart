void main(){
    List stdList = [];
    List AIStdList = [];

    print(stdList);

    stdList = registerAStudent("firstName", "lastName", 12, "department", 12, stdList);
    stdList = registerAStudent("Claire", "Kanga", 12, "department", 12, stdList);
    AIStdList = registerAStudent("Claire", "Kanga", 12, "department", 12, AIStdList);
    print(stdList);
}

registerAStudent(
  String firstName,
  String lastName,
  int stdID,
  String department,
  int phoneNumber,
  List list
){

  list.addAll([firstName, lastName, stdID, department, phoneNumber]);
  return list;
}