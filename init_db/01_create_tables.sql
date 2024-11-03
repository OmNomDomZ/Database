CREATE TABLE Article (
    ID SERIAL PRIMARY KEY,
    Author_ID INTEGER NOT NULL,
    Name TEXT NOT NULL
);

CREATE TABLE Author (
    ID SERIAL PRIMARY KEY,
    Surname TEXT NOT NULL,
    Name TEXT NOT NULL,
    Fathername TEXT
);

CREATE TABLE Num_Of_Release (
    ID SERIAL PRIMARY KEY,
    Publication_ID INTEGER NOT NULL,
    Num_Of_Publication INTEGER NOT NULL,
    Date TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE Publication (
    ID SERIAL PRIMARY KEY,
    Name TEXT NOT NULL,
    Publishing_House_ID INTEGER NOT NULL,
    Number_Of_Releases INTEGER NOT NULL
);

CREATE TABLE Publication_Of_Article (
    Article_ID INTEGER NOT NULL,
    Num_Of_Release_ID INTEGER NOT NULL,
    PRIMARY KEY (Article_ID, Num_Of_Release_ID)
);

CREATE TABLE Publishing_House (
    ID SERIAL PRIMARY KEY,
    Name TEXT NOT NULL
);
