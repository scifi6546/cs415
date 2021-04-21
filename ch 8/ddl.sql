CREATE TABLE Result(
    ResultType INT NOT NULL,
    ResultDescription VARCHAR(37) NOT NULL,
    PRIMARY KEY(ResultType)
);
CREATE TABLE Action(
    ActionType INT NOT NULL,
    ActionDescription VARCHAR(34) NOT NULL,
    PRIMARY KEY(ActionType)
);
CREATE TABLE Violation(
    ViolationType VARCHAR(6) NOT NULL,
    ViolationDescription VARCHAR(99),
    PRIMARY KEY(ViolationType)
);

CREATE TABLE Program(
    ProgramCategory INT NOT NULL,
    ProgramCategoryDescription VARCHAR(40) NOT NULL,
    PRIMARY KEY(ProgramCategory)
);

CREATE TABLE SiteAddress(
    SiteAddress varchar(38) NOT NULL,
    City CHAR(11) NOT NULL,
    State CHAR(2) NOT NULL,
    Zip VARCHAR(10) NOT NULL,
    StreetNumber VARCHAR(7) NOT NULL,
    StreetType VARCHAR(4) DEFAULT NULL,
    StreetName VARCHAR(24) NOT NULL,
    PostalDirection VARCHAR(2) DEFAULT NULL,
    PRIMARY KEY(SiteAddress)
);
CREATE TABLE Owner(
    OwnerKey INT NOT NULL,
    OwnerName VARCHAR(55) NOT NULL,
    PRIMARY KEY(OwnerKey)
);

CREATE TABLE Facility(
    FacilityKey INT NOT NULL,
    NatureofBusiness VARCHAR(25),
    FacilityName VARCHAR(100) NOT NULL,
    SiteAddress varchar(38) ,
    Phone VARCHAR(20) DEFAULT NULL,
    OwnerKey INT,
    PRIMARY KEY(FacilityKey),
    Foreign Key(SiteAddress) REFERENCES SiteAddress(SiteAddress),
    Foreign Key(OwnerKey) REFERENCES Owner(OwnerKey)
);
CREATE TABLE Inspection(
    InspectionId int Not NULL AUTO_INCREMENT,
    InspectionDate date DEFAULT NULL,
    InspectionMemo varchar(632),
    InspectionType int,
    InspectionDescription VARCHAR(37) NOT NULL,
    ActionType int NOT NULL,
    ResultType int NOT NULL,
    ViolationType VARCHAR(6) NOT NULL,
    ProgramType int NOT NULL,
    FacilityKey int NOT NULL,
    PRIMARY KEY(InspectionId),
    Foreign Key (ActionType) REFERENCES Action(ActionType),
    Foreign Key (ResultType) REFERENCES Result(ResultType),
    Foreign Key (ViolationType) REFERENCES Violation(ViolationType),
    Foreign Key (ProgramType) REFERENCES Program(ProgramCategory),
    Foreign Key(FacilityKey) REFERENCES Facility(FacilityKey)
);
