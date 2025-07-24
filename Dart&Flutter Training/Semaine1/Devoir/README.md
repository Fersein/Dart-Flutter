# 🏥 Devoir - Système de gestion d’hôpital

**À rendre avant le dimanche 17 juillet à minuit**

---

## 👨‍💻 Contexte

Vous êtes développeur au sein de l’entreprise *C&G Tech*. L’entreprise vous confie la conception d’un *système de gestion d’hôpital*.  
Votre mission consiste à modéliser les différentes étapes du parcours d’un patient à l’aide de structures de données en *Dart*.

---

## 📋 Tâches à réaliser

### 1. Enregistrement du patient à son arrivée
Lorsqu’un patient se présente à l’hôpital, ses informations personnelles doivent être enregistrées dans une base de données simulée.  
Cette base est représentée par un dictionnaire où :
- Clé : ID du patient
- Valeur : Informations suivantes :
  - Nom
  - Prénom
  - Numéro de téléphone
  - Département de consultation

---

### 2. Paiement des frais de consultation
Le patient doit payer les frais de consultation. Ces paiements sont enregistrés dans un dictionnaire :
- Clé : ID du patient  
- Valeur : Montant payé

---

### 3. Prise en charge par un médecin
Un médecin du département concerné prend en charge le patient. Il doit :
- Ajouter le patient à son dossier
- Rédiger l’historique médical du patient
- Ajouter ses observations cliniques

Les historiques médicaux sont organisés dans un dictionnaire :
- Clé : Nom du médecin  
- Valeur : Liste de patients avec :
  - ID du patient
  - Nom et prénom
  - Historique
  - Observations

---

### 4. Prescription de médicaments
Le médecin prescrit les médicaments nécessaires.  
Leur nom et leur prix sont enregistrés pour que le patient procède au paiement.

Dictionnaire :
- Clé : ID du patient  
- Valeur : Médicaments avec leurs prix

---

### 5. Récupération des médicaments à la pharmacie
Après paiement, le patient récupère ses médicaments à la pharmacie.  
Les médicaments délivrés sont enregistrés avec leur montant.

Dictionnaire :
- Clé : ID du patient  
- Valeur : Liste des médicaments délivrés avec les montants

---

## 🎯 Hints (structures de données attendues)

1. Liste des départements de l’hôpital  
   Ex. : `["Pédiatrie", "Imagerie", "Urologie", ...]`

2. Dictionnaire des patients  
   Clé : ID du patient  
   Valeur : Informations personnelles

3. Dictionnaire des paiements de consultation  
   Clé : ID du patient  
   Valeur : Montant payé

4. Dictionnaire des historiques médicaux par médecin  
   Clé : Nom du médecin  
   Valeur : Liste de patients avec historique et observations

5. Dictionnaire des paiements des médicaments  
   Clé : ID du patient  
   Valeur : Médicaments prescrits avec leurs prix

6. Dictionnaire de la pharmacie  
   Clé : ID du patient  
   Valeur : Médicaments récupérés avec leur montant

---