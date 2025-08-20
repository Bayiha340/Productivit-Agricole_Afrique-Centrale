-- Analyse de la base de données sur la productivité agricole des pays d'Afrique Centrale

-- Pays : Cameroun, Nigeria, RCA, Gabon, Guinée Equatoriale, Tchad

-- 1) Nous commençons par créer les différentes tables (pays, indicateurs, produit,année,valeur) qui vont nous servir
-- à partir de la base de données obtenue sur le site de la FAO

-- Création de la table pays

create table Pays(  
IDPays int primary key auto_increment,
Nom_Pays varchar (250)
);

-- Création de la table indicateurs

create table Indicateurs(  
IDIndicateurs int primary key auto_increment,
Nom_Indicateur varchar(100),
Unité_Indicateur varchar(200)
);

select*
from Indicateurs;

-- Création de la table Culture

create table Culture ( 
IDCulture int primary key auto_increment,
Nom_Culture varchar(250)
);

-- Création de la table Année
create table Année (  
IDAnnée int primary key auto_increment,
Année int);

-- Création de la table Valeur
create table Valeur(  
IDValeur int primary key auto_increment,
Valeur int,
IDIndicateurs int,
IDCulture int,
IDAnnée int,
IDPays int,
FOREIGN KEY(IDIndicateurs) references Indicateurs(IDIndicateurs),
FOREIGN KEY(IDCulture) references Culture(IDCulture),
FOREIGN KEY(IDAnnée) references Année(IDAnnée),
FOREIGN KEY(IDPays) references Pays(IDPays)
);

select*
from valeur;

-- On créé une vue uniquement pour les productions par pays, culture et par année

create view Production as
select Nom_Pays as Pays, Nom_Culture as Culture, Année, Nom_Indicateur, Valeur as Production, Unité_Indicateur
from valeur
join Pays using(IDPays)
join Culture using (IDCulture)
join Année using (IDAnnée)
join Indicateurs using (IDIndicateurs)
where Nom_Indicateur = "Production" and Unité_Indicateur = "tonnes";  

select*
from Production;

-- On créé une vue uniquement pour les rendements par pays, culture et par année

create view Rendement as
select Nom_Pays as Pays, Nom_Culture as Culture, Année, Nom_Indicateur, Valeur as Rendement, Unité_Indicateur
from valeur
join Pays using(IDPays)
join Culture using (IDCulture)
join Année using (IDAnnée)
join Indicateurs using (IDIndicateurs)
where Nom_Indicateur = "Rendement" and Unité_Indicateur = "kg/ha";

select*
from Rendement;

-- On créé une vue uniquement pour les superficies récoltées par pays, culture et par année

create view Superficie_Récoltée as
select Nom_Pays as Pays, Nom_Culture as Culture, Année, Nom_Indicateur, Valeur as Superficie_Récoltée, Unité_Indicateur
from valeur
join Pays using(IDPays)
join Culture using (IDCulture)
join Année using (IDAnnée)
join Indicateurs using (IDIndicateurs)
where Nom_Indicateur = "Superficie récoltée" and Unité_Indicateur = "ha";

select*
from Superficie_Récoltée;
