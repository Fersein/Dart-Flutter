# 📘 Devoir – Système de Gestion Scolaire : *Maria la Belle*

## 🎯 Contexte
Vous êtes développeur chez **C&G Tech**. L’école *Maria la Belle* a mandaté votre équipe pour concevoir un **système de gestion scolaire numérique**. Ce système devra couvrir l’ensemble du cycle scolaire, de l'inscription des élèves jusqu’à la génération des bilans académiques et financiers.

---

## 🗓️ Processus annuel de l’école

### 1. Inscriptions (Juillet)
- Les élèves s'inscrivent selon leur cycle :
  - Primaire : **5 000 FCFA**
  - Collège : **10 000 FCFA**
  - Lycée : **15 000 FCFA**
- Le système doit permettre l’enregistrement des élèves avec ces frais.

### 2. Confirmation de rentrée (Octobre)
- Tous les élèves doivent confirmer leur inscription pour apparaître comme **actifs** dans le système.

### 3. Gestion mensuelle (Fin de chaque mois)
- L’école effectue deux opérations :
  - Encaissement des **frais mensuels de scolarité**
  - Paiement des **salaires des enseignants**

### 4. Évaluations trimestrielles
Périodes :
- **Décembre** : 1er trimestre
- **Mars** : 2e trimestre
- **Juin** : 3e trimestre

#### Calcul des moyennes :
- **Primaire** :
  - Moyenne = **Somme des notes ÷ nombre de matières**
- **Collège & Lycée** :
  - Moyenne = **Somme(note × coefficient) ÷ Somme des coefficients**

#### Classement :
- Le système classe les élèves **du plus fort au plus faible** selon leur moyenne.

### 5. Moyenne annuelle (Juillet)
- Moyenne annuelle = **(Moyenne T1 + Moyenne T2 + Moyenne T3) ÷ 3**

### 6. Bilan financier trimestriel
- À chaque fin de trimestre, un **état financier** est généré :
  - **Entrées** : inscriptions, frais mensuels
  - **Sorties** : salaires enseignants

---

## 👨‍🏫 Gestion des enseignants
Le système devra intégrer :
- La **liste des enseignants**
- Le **montant mensuel de leur salaire**
- La **liaison des paiements** avec la trésorerie disponible

---

## 🧩 Modules Fonctionnels Requis

### 1. Module Élève
- Inscriptions et confirmations
- Paiements et frais
- Bulletins et classements

### 2. Module Enseignant
- Gestion des profils
- Attribution des matières
- Paiement des salaires

### 3. Module Matières & Coefficients
- Définition des matières par cycle
- Gestion des coefficients

### 4. Module Financier
- Suivi des entrées et sorties
- Génération de bilans

### 5. Module Rapports
- Bulletins par trimestre et annuel
- Classements par classe
- Statistiques académiques et financières

---

## 📦 Livrables attendus
- Architecture de la base de données
- Interface utilisateur (web ou mobile)
- Documentation technique et fonctionnelle
- Présentation du système (demo ou prototype)

---

> **NB** : Le système doit être évolutif et prêt à intégrer de futurs modules tels que la gestion de bibliothèque, cantine ou transport scolaire.
