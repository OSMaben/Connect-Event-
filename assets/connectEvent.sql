CREATE TABLE lieux(
	id_lieux INT PRIMARY KEY AUTO_INCREMENT,
    city varchar(255),
    temps DATE
);

-- CREATE TABLE ()
-- INT PRIMARY KEY AUTO_INCREMENT
CREATE TABLE particpant(
	id_par INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    prename varchar(255),
    age INT
);
CREATE TABLE evenement(
	id_even INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    temps DATE,
    lieux varchar(255),
    id_lieux INT, -- foreign key
    FOREIGN KEY (id_lieux) REFERENCES lieux (id_lieux)
);

CREATE TABLE organisateurs(
	id_org INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    prename varchar(255),
    age INT,
    id_partic INT,
    id_even INT,
    FOREIGN KEY (id_orga) REFERENCES particpant (id_par),
    FOREIGN KEY (id_even) REFERENCES evenement (id_even)
);

CREATE TABLE organisation(
	id_sps INT PRIMARY KEY AUTO_INCREMENT,
    id_organisateur INT,
    id_everement INT,
    FOREIGN KEY (id_oranisateur) REFERENCES organisateurs (id_org),
    FOREIGN KEY (id_everement) REFERENCES evenement (id_even)
);

CREATE TABLE sponsor(
	id_sps INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    prename varchar(255),
    address varchar(255),
    age INT
);

CREATE TABLE sponsorisation(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_even INT,
    id_sponsors INT,
    FOREIGN KEY (id_even) REFERENCES evenement (id_even),
    FOREIGN KEY (id_sponsors) REFERENCES sponsor (id_sps)
);

