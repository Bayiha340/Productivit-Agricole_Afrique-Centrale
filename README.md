# 🌍 Productivité agricole en Afrique centrale : Cameroun vs pays voisins

## 📌 Contexte
Le Cameroun est souvent qualifié de **“grenier de l’Afrique centrale”**.  
Ce projet explore cette affirmation en comparant les performances agricoles du Cameroun avec celles de ses voisins frontaliers (Nigeria, Tchad, RCA, Gabon, Guinée équatoriale), à partir des données **FAOSTAT (2008–2023)**.

## 🎯 Objectifs
- Évaluer les écarts de **rendement (t/ha)**, **production (tonnes)** et **superficies récoltées (ha)** pour cinq cultures stratégiques :  
  maïs, riz, manioc, tomate, pomme de terre.  
- Vérifier la validité empirique de l’idée selon laquelle le Cameroun est le grenier de la sous-région.  
- Identifier les **leviers d’action** pour une intensification durable et agroécologique.

## 🛠️ Méthodologie
1. Téléchargement des données **FAOSTAT**.  
2. Nettoyage et structuration avec **MySQL** (tables : Valeur, Pays, Année, Culture, Indicateur).  
3. Analyse exploratoire sous **Python (Pandas, Matplotlib)** :  
   - Statistiques descriptives  
   - Visualisations (rendements, productions, superficies)  
   - Matrice de corrélation & scatter plots  
4. Interprétation économique et formulation de recommandations.

## 📊 Principaux résultats
- **Rendements** : Cameroun en tête (8,2 t/ha), Nigeria plus bas (4,1 t/ha) mais plus stable.  
- **Production** : Nigeria domine (14 Mt/an) grâce à ses superficies > 3 Mha. Cameroun suit à distance.  
- **Corrélations** : Production dépend quasi exclusivement de la superficie (r=0,92). Le rendement n’explique presque rien (r=0,15).  
- **Conclusion** : L’agriculture reste **extensive**. Le Cameroun confirme son rôle de grenier mais doit consolider ses gains par l’**agroécologie**.

## 🌱 Recommandations 
- Réduire la dépendance aux pesticides et engrais chimiques coûteux et nocifs.  
- Miser sur les **rotations de cultures, agroforesterie, fertilisation organique, irrigation de proximité**.  
- Investir dans le **stockage, la transformation locale et les corridors commerciaux régionaux**.  
- Mettre en place un **observatoire sous-régional des rendements** et des incitations vertes pour l’adoption de pratiques agroécologiques.

## 📂 Contenu du repo
- `data/` → Données FAOSTAT nettoyées.  
- `notebooks/` → Analyses exploratoires en Python (rendement, production, corrélation).  
- `sql/` → Scripts MySQL pour structuration de la base.  
- `report/` → Synthèse et recommandations (FAO style).  

## 📬 Contact
Projet conduit par **Gérard De La Paix Bayiha**  
Économiste agricole & Data Analyst  
📧 gerarddelapaixbayiha@yahoo.fr  

---
