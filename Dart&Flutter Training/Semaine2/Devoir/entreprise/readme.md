# 🏢 Exercice 2 : Gestion d'une entreprise

## Objectif :
Créer une application en Dart pour gérer la liste des employés d’une entreprise et calculer la masse salariale.

## Compétences à pratiquer :
- Variables
- Listes et Maps
- Boucles
- Conditions
- Fonctions

## Enoncé :

Vous devez développer une application pour gérer les employés d'une entreprise.

1. Créez une **liste** d'employés. Chaque employé est représenté par une **Map** contenant :
   - `nom` (String)
   - `poste` (String)
   - `salaire` (double)

2. Créez une fonction `ajouterEmploye(String nom, String poste, double salaire)` pour ajouter un employé.

3. Implémentez une fonction `afficherEmployesParPoste(String poste)` qui affiche les employés ayant un poste spécifique.

4. Créez une fonction `calculerMasseSalariale()` qui renvoie le total de tous les salaires.

5. Si un employé a un salaire supérieur à 5000€, affichez le message :  
   `Bonus possible pour {nom}`

6. Affichez la masse salariale totale à la fin.
