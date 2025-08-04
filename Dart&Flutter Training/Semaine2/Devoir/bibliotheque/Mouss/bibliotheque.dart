import 'dart:io';

void main() {
  // List with book names
  List<String> booksName = ['Python', 'Android'];

  // Map with book details
  Map<dynamic, dynamic> booksInformation = {
    'Python': {
      'Titre': 'Data structure in python',
      'Auteur': 'James',
      'disponible': true,
    },
    'Android': {
      'Titre': 'Views in android',
      'Auteur': 'James',
      'disponible': true,
    },
  };

  // Pass variables to allPrograms
  allPrograms(booksName, booksInformation);
}

// general parameter to get display, borrow and return
void allPrograms(
  List<String> booksName,
  Map<dynamic, dynamic> booksInformation,
) {
  print(
    "\t1. Display books \n\t2. Borrow a book \n\t3. Return book \n\t4. Exit",
  );
  stdout.write("\tEnter your choice (1-4): ");
  String? choice = stdin.readLineSync()?.trim();

  switch (choice) {
    case '1':
      stdout.write("\tEnter your name: ");
      String? userName = stdin.readLineSync()?.trim() ?? "Guest";
      stdout.write("\tEnter your user ID: ");
      String? userId = stdin.readLineSync()?.trim() ?? "Unknown";

      // Show user info + display books
      print("\n--- Requested by: $userName (ID: $userId) ---");
      displayBook(booksName, booksInformation);
      break;

    case '2':
      // Call borrowBook s
      borrowBook(booksName, booksInformation);
      break;

    case '3':
      // Call returnBook
      returnBook(booksName, booksInformation);
      break;

    case '4':
      print("Thank you for using the system!");
      break;

    default:
      print("Invalid choice! Enter 1-4.");
  }
}

// Display books
void displayBook(
  List<String> booksName,
  Map<dynamic, dynamic> booksInformation,
) {
  print("\t*** Show all books ***");
  for (String bookName in booksName) {
    Map<dynamic, dynamic>? info = booksInformation[bookName];
    if (info == null) continue;

    print("\t$bookName");
    info.forEach((key, value) => print("\t$key: $value"));
    print("");
  }
}

// Borrow book function
void borrowBook(
  List<String> booksName,
  Map<dynamic, dynamic> booksInformation,
) {
  print("\t*** Borrow a Book ***");
  stdout.write("\tEnter book name to borrow: ");
  String? bookName = stdin.readLineSync()?.trim() ?? "";

  // Check if book exists in the list
  if (!booksName.contains(bookName)) {
    print("\tError: '$bookName' not found.");
    return;
  }

  // Get book details
  Map<dynamic, dynamic>? bookInfo = booksInformation[bookName];
  if (bookInfo == null) {
    print("\tError: No details for '$bookName'.");
    return;
  }

  // Check availability
  bool isAvailable = bookInfo['disponible'] ?? false;
  if (!isAvailable) {
    print("\tError: '$bookName' is already borrowed.");
    return;
  }

  // Update status to borrowed
  bookInfo['disponible'] = false;
  print("\tSuccess: '$bookName' borrowed.");
  print("\tUpdated status: Available = ${bookInfo['disponible']}");
}

// Return book function
void returnBook(
  List<String> booksName, // List of all books
  Map<dynamic, dynamic> booksInformation,
) {
  print("\t*** Return a Book ***");
  stdout.write("\tEnter book name to return: ");
  String? bookName = stdin.readLineSync()?.trim() ?? "";

  // Check if book exists
  if (!booksName.contains(bookName)) {
    print("\tError: '$bookName' not found.");
    return;
  }

  // Get book details
  Map<dynamic, dynamic>? bookInfo = booksInformation[bookName];
  if (bookInfo == null) {
    print("\tError: No details for '$bookName'.");
    return;
  }

  // Check if it was borrowed
  bool isAvailable = bookInfo['disponible'] ?? true;
  if (isAvailable) {
    print("\tError: '$bookName' is already available.");
    return;
  }

  // Update status to available
  bookInfo['disponible'] = true;
  print("\tSuccess: '$bookName' returned.");
  print("\tUpdated status: Available = ${bookInfo['disponible']}");
}
