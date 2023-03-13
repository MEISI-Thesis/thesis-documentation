CREATE TABLE User (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE Role (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE UserRole (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE Device (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE UserDevice (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE System (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE Connection (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE Address (
    uuid uuid NOT NULL PRIMARY KEY,
);
CREATE TABLE Ownership (
    uuid uuid NOT NULL PRIMARY KEY,
);