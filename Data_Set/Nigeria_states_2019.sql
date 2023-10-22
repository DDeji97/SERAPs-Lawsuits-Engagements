CREATE TABLE NigeriaStates (
    StateName VARCHAR(50),
    PoliticalParty VARCHAR(50),
    GeopoliticalZone VARCHAR(50),
    Population_2019 INT
);

INSERT INTO NigeriaStates (StateName, PoliticalParty, GeopoliticalZone, Population_2019) VALUES
('Abia', 'PDP', 'South East', 4812000),
('Adamawa', 'APC', 'North East', 4989000),
('Akwa Ibom', 'PDP', 'South South', 5607000),
('Anambra', 'APGA', 'South East', 5303000),
('Bauchi', 'APC', 'North East', 6153000),
('Bayelsa', 'PDP', 'South South', 2172000),
('Benue', 'PDP', 'North Central', 6175000),
('Borno', 'APC', 'North East', 6588000),
('Cross River', 'PDP', 'South South', 4153000),
('Delta', 'PDP', 'South South', 5559000),
('Ebonyi', 'PDP', 'South East', 3489000),
('Edo', 'APC', 'South South', 4672000),
('Ekiti', 'APC', 'South West', 2957000),
('Enugu', 'PDP', 'South East', 4729000),
('FCT Abuja', 'APC', 'North Central', 2143000),
('Gombe', 'APC', 'North East', 3136000),
('Imo', 'APC', 'South East', 4856000),
('Jigawa', 'APC', 'North West', 5461000),
('Kaduna', 'APC', 'North West', 8042000),
('Kano', 'APC', 'North West', 13890000),
('Katsina', 'APC', 'North West', 8071000),
('Kebbi', 'APC', 'North West', 4028000),
('Kogi', 'APC', 'North Central', 4697000),
('Kwara', 'PDP', 'North Central', 3363000),
('Lagos', 'APC', 'South West', 13960000),
('Nasarawa', 'APC', 'North Central', 3010000),
('Niger', 'APC', 'North Central', 5283000),
('Ogun', 'APC', 'South West', 5570000),
('Ondo', 'APC', 'South West', 4933000),
('Osun', 'APC', 'South West', 5253000),
('Oyo', 'PDP', 'South West', 7562000),
('Plateau', 'APC', 'North Central', 4842000),
('Rivers', 'PDP', 'South South', 7763000),
('Sokoto', 'APC', 'North West', 4909000),
('Taraba', 'PDP', 'North East', 2888000),
('Yobe', 'APC', 'North East', 3289000),
('Zamfara', 'APC', 'North West', 4382000);

--- Importing SERAP's Data 
CREATE TABLE StateBudgets (
    S_N INT,
    StateName VARCHAR(50),
    Annual_Budget DECIMAL(18, 2),
    Frequency INT
);

INSERT INTO StateBudgets (S_N, StateName, Annual_Budget, Frequency) VALUES
(1, 'Abia', 1200, 134),
(2, 'Adamawa', 1500, 42),
(3, 'Akwa Ibom', 1100, 106),
(4, 'Anambra', 1450, 216),
(5, 'Bauchi', 950, 27),
(6, 'Bayelsa', 1200, 25),
(7, 'Benue', 1350, 87),
(8, 'Borno', 1500, 49),
(9, 'Cross River', 250000, 54),
(10, 'Delta', 1450, 204),
(11, 'Ebonyi', 1050, 39),
(12, 'Edo', 1100, 167),
(13, 'Ekiti', 1450, 101),
(14, 'Enugu', 1300, 123),
(15, 'FCT', 19250854, 209),
(16, 'Gombe', 1250, 23),
(17, 'Imo', 1300, 143),
(18, 'Jigawa', 1250, 24),
(19, 'Kaduna', 1400, 105),
(20, 'Kano', 1300, 95),
(21, 'Katsina', 1000, 36),
(22, 'Kebbi', 1200, 15),
(23, 'kogi', 1250, 90),
(24, 'kwara', 850, 135),
(25, 'Lagos', 63577890, 1178),
(26, 'Nasarawa', 1650, 26),
(27, 'Niger', 1500, 38),
(28, 'Ogun', 2500, 248),
(29, 'Ondo', 1500, 116),
(30, 'Osun', 2015000, 203),
(31, 'Oyo', 2000, 292),
(32, 'Plateau', 1850, 50),
(33, 'Rivers', 3650200, 124),
(34, 'Sokoto', 1050, 13),
(35, 'Taraba', 1350, 21),
(36, 'Yobe', 1100, 23),
(37, 'Zamfara', 1100, 10);

---Merging the two table above 
SELECT 
    ns.StateName,
    ns.PoliticalParty,
    ns.GeopoliticalZone,
    ns.Population_2019,
    sb.Annual_Budget,
    sb.Frequency
FROM 
    NigeriaStates ns
JOIN 
    StateBudgets sb ON ns.StateName = sb.StateName;


