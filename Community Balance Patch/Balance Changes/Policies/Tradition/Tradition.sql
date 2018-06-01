-- Adjust Tradition Arrangement
UPDATE Policies
SET GridX = '2'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridX = '4'
WHERE Type = 'POLICY_OLIGARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Opener
UPDATE Policies
SET PlotCultureExponentModifier = '0'
WHERE Type = 'POLICY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policy_BuildingClassCultureChanges
SET CultureChange = '2'
WHERE PolicyType = 'POLICY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '5'
WHERE Type = 'POLICY_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Aristocracy
UPDATE Policies
SET HappinessPerXPopulation = '0'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET WonderProductionModifier = '0'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '5'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GarrisonedCityRangeStrikeModifier = '50'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '57'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Oligarchy
UPDATE Policies
SET GarrisonedCityRangeStrikeModifier = '0'
WHERE Type = 'POLICY_OLIGARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GarrisonFreeMaintenance = '0'
WHERE Type = 'POLICY_OLIGARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '5'
WHERE Type = 'POLICY_OLIGARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PlotCultureExponentModifier = '-25'
WHERE Type = 'POLICY_OLIGARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '59'
WHERE Type = 'POLICY_OLIGARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Legalism
UPDATE Policies
SET NumCitiesFreeCultureBuilding = '0'
WHERE Type = 'POLICY_LEGALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CapitalGrowthMod = '0'
WHERE Type = 'POLICY_LEGALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '5'
WHERE Type = 'POLICY_LEGALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '55'
WHERE Type = 'POLICY_LEGALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GoldenAgeDurationMod = '0'
WHERE Type = 'POLICY_LEGALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Monarchy
UPDATE Policies
SET CapitalUnhappinessMod = '0'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_CapitalYieldPerPopChanges
WHERE PolicyType = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '5'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '58'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET HalfSpecialistFoodCapital = '1'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Landed Elite

UPDATE Policies
SET CapitalGrowthMod = '0'
WHERE Type = 'POLICY_LANDED_ELITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_CapitalYieldChanges
WHERE PolicyType = 'POLICY_LANDED_ELITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '5'
WHERE Type = 'POLICY_LANDED_ELITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GreatPeopleRateModifier = '0'
WHERE Type = 'POLICY_LANDED_ELITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '56'
WHERE Type = 'POLICY_LANDED_ELITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
UPDATE Policies
SET NumCitiesFreeFoodBuilding = '0'
WHERE Type = 'POLICY_TRADITION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityGrowthMod = '0'
WHERE Type = 'POLICY_TRADITION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

--UPDATE Policies
--SET UnlocksPolicyBranchEra = 'ERA_MEDIEVAL'
--WHERE Type = 'POLICY_TRADITION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
--UPDATE Policies
--SET IdeologyPoint = '1'
--WHERE Type = 'POLICY_TRADITION_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- NEW

INSERT INTO Policy_PrereqPolicies
	(PolicyType, PrereqPolicy)
VALUES
	('POLICY_LEGALISM', 'POLICY_ARISTOCRACY');

INSERT INTO Policy_YieldGPExpend
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_LANDED_ELITE', 'YIELD_GOLDEN_AGE_POINTS', 50),
	('POLICY_LANDED_ELITE', 'YIELD_CULTURE', 50);

INSERT INTO Policy_FreeBuilding
			(PolicyType,			BuildingClassType,				Count)
VALUES		('POLICY_ARISTOCRACY',	'BUILDINGCLASS_CAPITAL_ENGINEER',	1),
			('POLICY_MONARCHY',	'BUILDINGCLASS_PALACE_TREASURY',		1),
			('POLICY_LANDED_ELITE',	'BUILDINGCLASS_PALACE_GARDEN',	1),
			('POLICY_OLIGARCHY',	'BUILDINGCLASS_PALACE_COURT_CHAPEL',	1),
			('POLICY_LEGALISM',	'BUILDINGCLASS_PALACE_ASTROLOGER',	1),
			('POLICY_TRADITION_FINISHER',	'BUILDINGCLASS_PALACE_THRONE_ROOM',	1);

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_LEGALISM', 'BUILDINGCLASS_PALACE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_NATIONAL_COLLEGE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_NATIONAL_EPIC', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_HEROIC_EPIC', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_NATIONAL_TREASURY', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_GRAND_TEMPLE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_OXFORD_UNIVERSITY', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_CIRCUS_MAXIMUS', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_IRONWORKS', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_HERMITAGE', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_INTELLIGENCE_AGENCY', 1),
	('POLICY_LEGALISM', 'BUILDINGCLASS_TOURIST_CENTER', 1);

INSERT INTO Policy_CapitalYieldChanges
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_TRADITION', 'YIELD_FOOD', 3),
	('POLICY_ARISTOCRACY', 'YIELD_FOOD', 1),
	('POLICY_OLIGARCHY', 'YIELD_FOOD', 1),
	('POLICY_LANDED_ELITE', 'YIELD_FOOD', 1),
	('POLICY_LEGALISM', 'YIELD_FOOD', 1),
	('POLICY_MONARCHY', 'YIELD_FOOD', 1);

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_ACADEMY', 'YIELD_FOOD', 1),
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FOOD', 1),
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_CUSTOMS_HOUSE', 'YIELD_FOOD', 1),
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_CUSTOMS_HOUSE_VENICE', 'YIELD_FOOD', 1),
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_MANUFACTORY', 'YIELD_FOOD', 1),
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_CITADEL', 'YIELD_FOOD', 1),
	('POLICY_TRADITION_FINISHER', 'IMPROVEMENT_LANDMARK', 'YIELD_FOOD', 1);

-- New Building Yield Data

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_PALACE_TREASURY', 'YIELD_GOLD', 4),
	('BUILDING_PALACE_GARDEN', 'YIELD_FOOD', 5),
	('BUILDING_CAPITAL_ENGINEER', 'YIELD_PRODUCTION', 3),
	('BUILDING_PALACE_COURT_CHAPEL', 'YIELD_FAITH', 3),
	('BUILDING_PALACE_ASTROLOGER', 'YIELD_SCIENCE', 3);

INSERT INTO Policy_CityYieldChanges
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_ARISTOCRACY', 'YIELD_PRODUCTION', 1);

INSERT INTO Building_YieldModifiers
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_THRONE_ROOM', 'YIELD_FOOD', 10),
	('BUILDING_THRONE_ROOM', 'YIELD_SCIENCE', 10),
	('BUILDING_THRONE_ROOM', 'YIELD_FAITH', 10),
	('BUILDING_THRONE_ROOM', 'YIELD_PRODUCTION', 10),
	('BUILDING_THRONE_ROOM', 'YIELD_GOLD', 10);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_PALACE_GARDEN', 'BUILDINGCLASS_GARDEN', 'YIELD_CULTURE', 2),
	('BUILDING_PALACE_GARDEN', 'BUILDINGCLASS_BATH', 'YIELD_CULTURE', 2),
	('BUILDING_PALACE_GARDEN', 'BUILDINGCLASS_MONUMENT', 'YIELD_CULTURE', 2),
	('BUILDING_PALACE_ASTROLOGER', 'BUILDINGCLASS_GROVE', 'YIELD_SCIENCE', 1),
	('BUILDING_PALACE_ASTROLOGER', 'BUILDINGCLASS_HERBALIST', 'YIELD_SCIENCE', 1);