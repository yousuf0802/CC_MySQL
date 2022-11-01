create database CC;
use CC;
CREATE TABLE PetOwner
(
    OwnerID int PRIMARY KEY,
    Name char(50),
    Surname char(50),
    StreetAddress char(100),
    City char(100),
    State char(10),
    ZipCode int
)
;
CREATE TABLE Pet
(
    petID char(10) PRIMARY KEY,
    Name char(20),
    Kind char(10),
    Gender char(6),
    Age int
    OwnerID int);
    CREATE TABLE ProcedureHistory
    (
        petID char(10),
        ProcedureDate date,
        ProcedureType char(50),
        Description char(100)
    );
    ALTER TABLE PetOwner
    ALTER State
    SET
    DEFAULT 'Michigan';

    ALTER TABLE Pet
ADD FOREIGN KEY (OwnerID) REFERENCES PetOwner(OwnerID);

    ALTER TABLE ProcedureHistory
ADD FOREIGN KEY (PetId) REFERENCES Pet(PetID);