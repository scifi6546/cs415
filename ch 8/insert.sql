INSERT INTO Result(ResultType, ResultDescription)
SELECT DISTINCT
    RESULT_CODE,
    RESULT_DESC
FROM
    Albuquerque.FoodInspections;
INSERT INTO Action(ActionType, ActionDescription)
SELECT DISTINCT
    ACTION_CODE,
    ACTION_DESC
FROM
    Albuquerque.FoodInspections;

INSERT INTO Violation(
    ViolationType,
    ViolationDescription
)
SELECT DISTINCT
    VIOLATION_CODE,
    VIOLATION_DESC
FROM
    Albuquerque.FoodInspections;
INSERT INTO Program(
    ProgramCategory,
    ProgramCategoryDescription
)
SELECT DISTINCT
    PROGRAM_CATEGORY,
    PROGRAM_CATEGORY_DESCRIPTION
FROM
    Albuquerque.FoodInspections;
INSERT INTO SiteAddress(
    City,
    State,
    Zip,
    StreetNumber,
    StreetType,
    StreetName,
    PostalDirection
)
SELECT DISTINCT
    CITY,
    STATE,
    ZIP,
    STREET_NUMBER,
    STREET_TYPE,
    STREET_NAME,
    POST_DIRECTIONAL
FROM
    Albuquerque.FoodInspections;

INSERT INTO Owner(OwnerKey, OwnerName)
SELECT DISTINCT
    OWNER_KEY,
    OWNER_NAME
FROM
    Albuquerque.FoodInspections;
    