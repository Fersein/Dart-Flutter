import 'dart:io';

void main() {
  List<String> employeesNames = ['James', 'Mouss', 'Valdo'];
  Map<dynamic, dynamic> employeesTotalInformation = {
    'James': {'poste': 'Ingenieur', 'salaire': 1220.00},
    'Mouss': {'poste': 'Accountant', 'salaire': 1237.00},
    'Valdo': {'poste': 'Surgeon', 'salaire': 1229933.00},
  };

  entrepriseInformationBoard(employeesNames, employeesTotalInformation);
}

// task board
void entrepriseInformationBoard(
  List<String> employeesNames,
  Map<dynamic, dynamic> employeesTotalInformation,
) {
  print("\t1. Add employees \n\t2. Display employees \n\t3. Payroll");
  print("");
  stdout.write("\tEnter your choice: ");
  String? choice = stdin.readLineSync()?.trim();
  print("");

  switch (choice) {
    case '1':
      // user name
      stdout.write("\tEnter your name: ");
      String? userName = stdin.readLineSync()?.trim() ?? "";

      // user post
      stdout.write("\tEnter your user post: ");
      String? userPost = stdin.readLineSync()?.trim() ?? "";

      // user salary
      stdout.write("\tEnter employee salary: ");
      String? userSalaryInput = stdin.readLineSync()?.trim() ?? "";
      double? userSalary = double.tryParse(userSalaryInput);

      if (userSalary == null) {
        print("\tError: Invalid salary format. Please enter a number.");
        break;
      }

      addEmployees(
        userName,
        userPost,
        userSalary,
        employeesTotalInformation,
        employeesNames,
      );
      // print saved data
      displayEmployees(employeesNames, employeesTotalInformation);
      break;

    case '2':
      displayEmployees(employeesNames, employeesTotalInformation);
      break;

    case '3':
      double total = payroll(employeesTotalInformation);
      print("\t----- Masse salariale (payroll) -----");
      print("\tTotal: $total €");
      break;

    default:
      print("Invalid choice! Enter 1, 2, or 3.");
  }
}

// adding employees
void addEmployees(
  String name,
  String post,
  double salary,
  Map<dynamic, dynamic> employeesTotalInformation,
  List<String> employeesNames,
) {
  print("\t**** Add employees ****");
  if (name.isEmpty || post.isEmpty || salary <= 0) {
    print(
      "\tError: Please provide valid information (name, post, and positive salary)",
    );
    return;
  }

  // Initialize map if employee doesn't exist
  Map<dynamic, dynamic> userInfo = employeesTotalInformation[name] ?? {};

  // Use keys
  userInfo['poste'] = post;
  userInfo['salaire'] = salary;

  // Save updates
  employeesTotalInformation[name] = userInfo;

  // Add to names list if new employee
  if (!employeesNames.contains(name)) {
    employeesNames.add(name);
  }

  // display added employee
  print("\tSuccessfully added: $name");
}

// display employee
void displayEmployees(
  List<String> employeesNames,
  Map<dynamic, dynamic> employeesTotalInformation,
) {
  print("\t**** All employees ****");
  for (String employeeName in employeesNames) {
    // get employee info with null check
    Map<dynamic, dynamic>? info = employeesTotalInformation[employeeName];

    // case where employee has no information
    if (info == null) {
      print("\tNo information available for $employeeName");
      print("\t-----------");
      continue;
    }

    // get post with default value
    String post = info['poste'] ?? 'Inconnu';

    // Get and convert salary safely
    double? salaire;
    if (info['salaire'] is num) {
      salaire = (info['salaire'] as num).toDouble();
    } else {
      salaire = null;
    }

    // Check bonus eligibility
    if (salaire != null && salaire >= 5000) {
      print("\tBonus possible pour $employeeName");
    }

    // Display details
    print("\tName: $employeeName");
    print("\tPost: $post");
    print(
      "\tSalary: ${salaire ?? 'Non renseigné'} €",
    ); // if salaire Show € symbol
    print("\t-----------");
  }
}

double payroll(Map<dynamic, dynamic> employeesTotalInformation) {
  double total = 0.0;

  employeesTotalInformation.forEach((employeeName, details) {
    if (details is Map) {
      dynamic salaire = details['salaire'];

      if (salaire is num) {
        total += salaire.toDouble();
      } else {
        print("\tInvalid salary for $employeeName");
      }
    }
  });
  return total;
}
