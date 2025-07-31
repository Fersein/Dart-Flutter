# 🛒 Exercice 1 : Gestion d'une boutique

## Objectif :
Créer une mini-application en Dart pour gérer l'inventaire d'une boutique.

## Compétences à pratiquer :
- Variables
- Listes et Maps
- Boucles
- Conditions
- Fonctions

## Enoncé :

Vous êtes en charge de développer une application simple de gestion de boutique.

1. Créez une **liste** de produits. Chaque produit doit être une **Map** contenant les clés suivantes :
   - `nom` (String)
   - `prix` (double)
   - `quantite` (int)

2. Implémentez une fonction `afficherProduits()` qui affiche tous les produits avec leur prix et leur quantité en stock.

3. Créez une fonction `ajouterProduit(String nom, double prix, int quantite)` qui ajoute un nouveau produit à la liste.

4. Implémentez une fonction `vendreProduit(String nom, int quantiteVendue)` qui :
   - Vérifie si le produit existe dans la liste.
   - Vérifie si la quantité disponible est suffisante.
   - Diminue la quantité du produit si la vente est possible.
   - Affiche un message d'erreur si le produit n'existe pas ou si la quantité est insuffisante.

5. À la fin, affichez l'état mis à jour de l'inventaire.
