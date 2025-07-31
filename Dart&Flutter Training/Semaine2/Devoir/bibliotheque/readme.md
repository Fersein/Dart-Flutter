# 📚 Exercice 3 : Gestion d'une bibliothèque

## Objectif :
Créer un system en Dart permettant de gérer une bibliothèque (livres, emprunts, rendus).

## Compétences à pratiquer :
- Variables
- Listes et Maps
- Boucles
- Conditions
- Fonctions

## Enoncé :

Développez une mini-system de gestion de bibliothèque.

1. Créez une **liste** de livres. Chaque livre est représenté par une **Map** contenant :
   - `titre` (String)
   - `auteur` (String)
   - `disponible` (bool)

2. Implémentez une fonction `afficherLivresDisponibles()` qui affiche tous les livres disponibles à l'emprunt.

3. Créez une fonction `emprunterLivre(String titre)` qui :
   - Vérifie si le livre existe.
   - Vérifie s’il est disponible.
   - Change sa disponibilité à `false` s’il est emprunté.
   - Affiche un message d'erreur s’il n’est pas disponible ou non trouvé.

4. Créez une fonction `rendreLivre(String titre)` qui rend un livre (change sa disponibilité à `true`).

5. À la fin, affichez l’état complet de tous les livres (titre + statut de disponibilité).
