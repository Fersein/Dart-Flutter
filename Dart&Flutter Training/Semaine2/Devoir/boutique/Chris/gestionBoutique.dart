void main() {
  // Liste des produits (chaque produit est une Map)
  List<Map<String, dynamic>> inventaire = [
    {'nom': 'T-shirt', 'prix': 19.99, 'quantite': 50},
    {'nom': 'Jean', 'prix': 49.99, 'quantite': 30},
    {'nom': 'Chaussures', 'prix': 79.99, 'quantite': 20},
    {'nom': 'Montre', 'prix': 199.99, 'quantite': 10},
    {'nom': 'Sac à main', 'prix': 89.99, 'quantite': 25},
    {'nom': 'Veste', 'prix': 120.00, 'quantite': 15},
    {'nom': 'Pull', 'prix': 39.99, 'quantite': 40},
    {'nom': 'Chapeau', 'prix': 24.99, 'quantite': 35},
    {'nom': 'Lunettes de soleil', 'prix': 59.99, 'quantite': 12},
    {'nom': 'Baskets', 'prix': 89.99, 'quantite': 18},
    {'nom': 'Ceinture', 'prix': 29.99, 'quantite': 22},
    {'nom': 'Gants', 'prix': 15.99, 'quantite': 30},
    {'nom': 'Echarpe', 'prix': 19.99, 'quantite': 28},
  ];

  // Afficher tous les produits 
  afficherProduits(inventaire);

  // Ajouter un nouveau produit
  ajouterProduit(inventaire, 'Casquette', 14.99, 40);
  ajouterProduit(inventaire, 'Sac à dos', 35.50, 15);

  // Effectuer des ventes
  vendreProduit(inventaire, 'Jean', 2);
  vendreProduit(inventaire, 'T-shirt', 10);
  vendreProduit(inventaire, 'Chaussures', 25); 
  vendreProduit(inventaire, 'Montre', 1); 

  // Afficher l'inventaire final
  print('\n=== INVENTAIRE FINAL ===');
  afficherProduits(inventaire);
}

// Affiche tous les produits
void afficherProduits(List<Map<String, dynamic>> produits) {
  print('\n🛍️ INVENTAIRE DE LA BOUTIQUE');
  print('----------------------------------');
  for (var produit in produits) {
    print('${produit['nom']} - Prix: \$${produit['prix']} - Stock: ${produit['quantite']}');
  }
}

// Ajoute un nouveau produit
void ajouterProduit(List<Map<String, dynamic>> produits, String nom, double prix, int quantite) {
  produits.add({
    'nom': nom,
    'prix': prix,
    'quantite': quantite,
  });
  print('\n✅ "$nom" a été ajouté à l\'inventaire');
}

// Vendre un produit
void vendreProduit(List<Map<String, dynamic>> produits, String nom, int quantiteVendue) {
  print('\ Tentative de vente : $quantiteVendue x "$nom"');

  bool produitTrouve = false;
  
  for (var produit in produits) {
    if (produit['nom'] == nom) {
      produitTrouve = true;
      
      if (produit['quantite'] >= quantiteVendue) {
        produit['quantite'] -= quantiteVendue;
        double total = produit['prix'] * quantiteVendue;
        print('✅ Vente réussie! Total: \$${total.toStringAsFixed(2)}');
      } else {
        print('❌ Stock insuffisant. Stock actuel: ${produit['quantite']}');
      }
      break;
    }
  }

  if (!produitTrouve) {
    print('❌ Produit "$nom" non trouvé dans l\'inventaire');
  }
}