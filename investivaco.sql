CREATE TABLE TPersonne(
   Id_Personne INT,
   Nom_Personne VARCHAR(100) NOT NULL,
   Prenom_Personne VARCHAR(100) NOT NULL,
   Numero_Telephone_Personne BIGINT NOT NULL,
   PRIMARY KEY(Id_Personne)
);

CREATE TABLE TClient(
   Id_Personne INT,
   PRIMARY KEY(Id_Personne),
   FOREIGN KEY(Id_Personne) REFERENCES TPersonne(Id_Personne)
);

CREATE TABLE TProprietaire(
   Id_Personne INT,
   PRIMARY KEY(Id_Personne),
   FOREIGN KEY(Id_Personne) REFERENCES TPersonne(Id_Personne)
);

CREATE TABLE TPartenaire(
   Id_Partenaire INT,
   Nom_Partenaire VARCHAR(100) NOT NULL,
   Description_Partenaire VARCHAR(1500) NOT NULL,
   PRIMARY KEY(Id_Partenaire)
);

CREATE TABLE TLogement(
   Id_Logement INT,
   Stationnement_Logement INT NOT NULL,
   Electricite_Logement LOGICAL NOT NULL,
   Chauffage_Logement LOGICAL NOT NULL,
   Eau_Chaude_Logement LOGICAL NOT NULL,
   Laveuse_Logement LOGICAL NOT NULL,
   Lave_Vaiselle_Logement LOGICAL NOT NULL,
   Climatisation_Logement LOGICAL NOT NULL,
   Nom_Logement VARCHAR(200) NOT NULL,
   Adresse_Logement VARCHAR(300) NOT NULL,
   Prix_Logement DECIMAL(8,2) NOT NULL,
   Description_Logement VARCHAR(1500) NOT NULL,
   Nombre_Piece_Logement INT NOT NULL,
   Nombre_Chambre_Logement INT NOT NULL,
   Nombre_SDB_Logement INT NOT NULL,
   Animaux_Logement LOGICAL NOT NULL,
   Surface_Logement INT NOT NULL,
   Dispo_Logement LOGICAL NOT NULL,
   Date_Dispo_Logement DATE NOT NULL,
   Id_Personne INT NOT NULL,
   Id_Personne_1 INT NOT NULL,
   PRIMARY KEY(Id_Logement),
   FOREIGN KEY(Id_Personne) REFERENCES TClient(Id_Personne),
   FOREIGN KEY(Id_Personne_1) REFERENCES TProprietaire(Id_Personne)
);
