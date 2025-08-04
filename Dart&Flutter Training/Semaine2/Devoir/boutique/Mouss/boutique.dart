import 'dart:io';

void main() {
  List<String> produits = ['Telephone', 'Milk', 'Perfume'];

  Map<String, Map<String, dynamic>> products = {
    'Telephone': {'Samsung': 12333.0, 'Iphone': 33422.09, 'Quantity': 45},
    'Milk': {'Cowbell': 13.0, 'Milgro': 32.09, 'Quantity': 29},
    'Perfume': {'Axe': 13.0, 'Nivea': 33.09, 'Quantity': 58},
  };

  // Pass variables to allPrograms
  allPrograms(produits, products);
}

void allPrograms(
  List<String> produits,
  Map<String, Map<String, dynamic>> products,
) {
  print("\t1. Display products \n\t2. Add product");
  stdout.write("\tEnter your choice (1-2): ");
  String? choice = stdin.readLineSync()?.trim();

  switch (choice) {
    // first case
    case '1':
      stdout.write("\tEnter your name: ");
      String? userName = stdin.readLineSync()?.trim() ?? "Guest";
      stdout.write("\tEnter your user ID: ");
      String? userId = stdin.readLineSync()?.trim() ?? "Unknown";

      print("\n--- Requested by: $userName (ID: $userId) ---");
      afficherProduits(produits, products);
      break;

    // second case
    case '2':
      // ask the user which category
      stdout.write("\tEnter category (Telephone, Milk, Perfume): ");
      String? category = stdin.readLineSync()?.trim() ?? "";

      // ask the user product's name
      stdout.write("\tEnter product name: ");
      String? itemName = stdin.readLineSync()?.trim() ?? "";

      // ask the user product's price
      stdout.write("\tEnter product price: ");
      double price = double.tryParse(stdin.readLineSync()?.trim() ?? "") ?? 0.0;

      addToCategory(products, category, itemName, price);

      print("\n\t--- Updated Products ---");
      afficherProduits(produits, products);
      break;

    default:
      print("Invalid choice! Enter 1 or 2.");
  }
}

void afficherProduits(
  List produit1,
  Map<String, Map<String, dynamic>> produitsDetails1,
) {
  print("\t*** Produits et prix ***");
  for (String produit in produit1) {
    Map<String, dynamic>? info = produitsDetails1[produit];

    if (info == null) {
      print("\tNo details found for $produit");
      continue;
    }

    info.forEach((key, value) {
      if (key == 'Quantity') {
        print("\t$key: $value");
      } else {
        print("\t$key: \$$value");
      }
    });
    print("");
  }
}

void addToCategory(
  Map<String, Map<String, dynamic>> productMap,
  String category,
  String itemName,
  double price,
) {
  // Check if the category exists (Perfume or Milk)
  if (!productMap.containsKey(category)) {
    print(
      "Error: Category '$category' does not exist. Can only add to'Telephone', 'Perfume' or 'Milk'.",
    );
    return;
  }

  // Get the category's data
  Map<String, dynamic> categoryItems = productMap[category]!;

  // Add the new item with its price
  categoryItems[itemName] = price;

  // Update total quantity (if needed)
  categoryItems['Quantity'] = (categoryItems['Quantity'] as int) + 1;

  print("\tAdded '$itemName' to $category successfully.");
}
