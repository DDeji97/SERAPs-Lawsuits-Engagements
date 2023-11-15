# SERAP's Lawsuits Engagements
# Introduction 
Nigeria, with a population exceeding 223 million, holds the distinction of being Africa's most populous nation. Surprisingly, only 4 out of 10 Nigerians actively participate in political matters, leading to a serious dearth of accountability and transparency in governance. Efforts from various Non-Governmental Organizations (NGOs) and Civil Society Organizations (CSOs) to foster civic engagement have encountered substantial challenges, with millions of dollars spent across the 36 states, yielding limited success.

SERAP Nigeria, a leading NGO dedicated to fostering transparency and accountability, recently garnered the attention of over 4500 Nigerians, inviting them to join the movement against irrational spending by the 9th National Assembly. Analyzing the distribution of responses across the 36 states and the FCT promises fascinating insights crucial for addressing the persisting challenges faced by NGOs and CSOs in the country.


![image](https://github.com/DDeji97/SERAPs-Lawsuits-Engagements/blob/main/imgs/Presentation1.jpg)

**The primary objectives of this analysis are as follows:**
1) To explore the distribution of respondents interested in SERAP's Lawsuits across the 36 states, assessing the correlation of response frequencies with the geopolitical zones and political parties. This exploration aims to guide the strategic deployment of impactful projects in various states across Nigeria.
2) To conduct an in-depth analysis of SERAP's costs incurred in different states concerning awareness campaigns, town hall meetings, and lawsuit engagements in relation to the number of respondents. These costs will be approximated by benchmarking against similar events held in the region.

This project relied on a robust tech stack, including MySQL, Jupyter notebook, PowerBI, and Microsoft Excel, with SQL and Python serving as the primary programming languages."

All files used in this project have been attached in the required format.
# MODULE 1 - CLEANING AND PREPROCESSING THE DATA
**Table1(SERAPStates)**

I will start my processing by importing our original data containing the list of the 36 states in nigeria and FCT, the amount of respondents from each states and also an estimate of the total cost incurred to hold various initiatives in each states
N.B All the data used in this research are included in the dataset file.

```tsql
/* Importing SERAP's Data collected with Budget Estimate and Respondance Frequency to suits*/ 
CREATE TABLE SERAPStates ( S_N INT, StateName VARCHAR(50), Annual_Budget DECIMAL(18, 2), Frequency INT );

INSERT INTO SERAPStates (S_N, StateName, Annual_Budget, Frequency)
VALUES
(1, 'Abia', 1200, 134), (2, 'Adamawa', 1500, 42), (3, 'Akwa Ibom', 1100, 106),
(4, 'Anambra', 1450, 216), (5, 'Bauchi', 950, 27), (6, 'Bayelsa', 1200, 25),
(7, 'Benue', 1350, 87), (8, 'Borno', 1500, 49), (9, 'Cross River', 250000, 54),
(10, 'Delta', 1450, 204), (11, 'Ebonyi', 1050, 39), (12, 'Edo', 1100, 167),
(13, 'Ekiti', 1450, 101), (14, 'Enugu', 1300, 123), (15, 'FCT', 19250854, 209),
(16, 'Gombe', 1250, 23), (17, 'Imo', 1300, 143), (18, 'Jigawa', 1250, 24),
(19, 'Kaduna', 1400, 105), (20, 'Kano', 1300, 95), (21, 'Katsina', 1000, 36),
(22, 'Kebbi', 1200, 15), (23, 'kogi', 1250, 90), (24, 'kwara', 850, 135),
(25, 'Lagos', 63577890, 1178), (26, 'Nasarawa', 1650, 26), (27, 'Niger', 1500, 38),
(28, 'Ogun', 2500, 248), (29, 'Ondo', 1500, 116), (30, 'Osun', 2015000, 203),
(31, 'Oyo', 2000, 292), (32, 'Plateau', 1850, 50), (33, 'Rivers', 3650200, 124),
(34, 'Sokoto', 1050, 13), (35, 'Taraba', 1350, 21), (36, 'Yobe', 1100, 23),
(37, 'Zamfara', 1100, 10);
```
 **Table2(StateBudgets)**
***Data was gotten from Wikipedia such as the 36 states and FCT Abuja PoliticalParty, GeopoliticalZone, Population_2019***
 
 ```tsql
CREATE TABLE NigeriaStates (
    StateName VARCHAR(50), PoliticalParty VARCHAR(50),
    GeopoliticalZone VARCHAR(50), Population_2019 INT
);

INSERT INTO NigeriaStates (StateName, PoliticalParty, GeopoliticalZone, Population_2019) VALUES
('Abia', 'PDP', 'South East', 4812000), ('Adamawa', 'APC', 'North East', 4989000),
('Akwa Ibom', 'PDP', 'South South', 5607000), ('Anambra', 'APGA', 'South East', 5303000),
('Bauchi', 'APC', 'North East', 6153000), ('Bayelsa', 'PDP', 'South South', 2172000),
('Benue', 'PDP', 'North Central', 6175000),('Borno', 'APC', 'North East', 6588000),
('Cross River', 'PDP', 'South South', 4153000), ('Delta', 'PDP', 'South South', 5559000),
('Ebonyi', 'PDP', 'South East', 3489000), ('Edo', 'APC', 'South South', 4672000),
('Ekiti', 'APC', 'South West', 2957000), ('Enugu', 'PDP', 'South East', 4729000),
('FCT Abuja', 'APC', 'North Central', 2143000), ('Gombe', 'APC', 'North East', 3136000),
('Imo', 'APC', 'South East', 4856000), ('Jigawa', 'APC', 'North West', 5461000),
('Kaduna', 'APC', 'North West', 8042000), ('Kano', 'APC', 'North West', 13890000),
('Katsina', 'APC', 'North West', 8071000), ('Kebbi', 'APC', 'North West', 4028000),
('Kogi', 'APC', 'North Central', 4697000), ('Kwara', 'PDP', 'North Central', 3363000),
('Lagos', 'APC', 'South West', 13960000), ('Nasarawa', 'APC', 'North Central', 3010000),
('Niger', 'APC', 'North Central', 5283000), ('Ogun', 'APC', 'South West', 5570000),
('Ondo', 'APC', 'South West', 4933000), ('Osun', 'APC', 'South West', 5253000),
('Oyo', 'PDP', 'South West', 7562000), ('Plateau', 'APC', 'North Central', 4842000),
('Rivers', 'PDP', 'South South', 7763000), ('Sokoto', 'APC', 'North West', 4909000),
('Taraba', 'PDP', 'North East', 2888000), ('Yobe', 'APC', 'North East', 3289000),
('Zamfara', 'APC', 'North West', 4382000);
```

**Merging Table1(SERAPStates) with Table2(NigeriaStates)**

***To merge the two tables, I used the following steps:
I created a new table called SERAPNigeriaStates with all the columns from both of the original tables as shown below***

```tsql
CREATE TABLE SERAPNigeriaStates (
    S_N INT,
    StateName VARCHAR(50),
    Annual_Budget DECIMAL(18, 2),
    Frequency INT,
    PoliticalParty VARCHAR(50),
    GeopoliticalZone VARCHAR(50),
    Population_2019 INT);
```
***I further inserted the data from the SERAPStates table into the new table and then used a JOIN statement to merge the data from the NigeriaStates table into the new table, matching the rows based on the StateName column.***
```tsql
INSERT INTO SERAPNigeriaStates
SELECT
    SERAPStates.S_N,
    SERAPStates.StateName,
    SERAPStates.Annual_Budget,
    SERAPStates.Frequency,
    NigeriaStates.PoliticalParty,
    NigeriaStates.GeopoliticalZone,
    NigeriaStates.Population_2019
FROM SERAPStates
JOIN NigeriaStates ON SERAPStates.StateName = NigeriaStates.StateName;
```
***Here is what the final table looks like on a spreadsheet***
| S_N | StateName   | Annual_Budget(NGN)| Frequency | PoliticalParty | GeopoliticalZone | Population_2019 | Proximity_to_Lagos_State(KM)|
|-----|-------------|---------------|-----------|----------------|------------------|-----------------|--------------------------|
| 1   | Abia        | 1200          | 134       | PDP            | South East       | 4812000         | 1,034.5                  |
| 2   | Adamawa     | 1500          | 42        | APC            | North East       | 4989000         | 1,262.9                  |
| 3   | Akwa Ibom   | 1100          | 106       | PDP            | South South      | 5607000         | 1,045.4                  |
| 4   | Anambra     | 1450          | 216       | APGA           | South East       | 5303000         | 383.3                    |
| 5   | Bauchi      | 950           | 27        | APC            | North East       | 6153000         | 1,129.7                  |
| 6   | Bayelsa     | 1200          | 25        | PDP            | South South      | 2172000         | 1,034.7                  |
| 7   | Benue       | 1350          | 87        | PDP            | North Central    | 6175000         | 1,029.6                  |
| 8   | Borno       | 1500          | 49        | APC            | North East       | 6588000         | 1,614.5                  |
| 9   | Cross River | 250000        | 54        | PDP            | South South      | 4153000         | 576.9                    |
| 10  | Delta       | 1450          | 204       | PDP            | South South      | 5559000         | 398.8                    |
| 11  | Ebonyi      | 1050          | 39        | PDP            | South East       | 3489000         | 1,017.3                  |
| 12  | Edo         | 1100          | 167       | APC            | South South      | 4672000         | 308.4                    |
| 13  | Ekiti       | 1450          | 101       | APC            | South West       | 2957000         | 556.3                    |
| 14  | Enugu       | 1300          | 123       | PDP            | South East       | 4729000         | 496.2                    |
| 15  | FCT Abuja   | 19250854      | 209       | APC            | North Central    | 2143000         | 556.8                    |
| 16  | Gombe       | 1250          | 23        | APC            | North East       | 3136000         | 1,174.9                  |
| 17  | Imo         | 1300          | 143       | APC            | South East       | 4856000         | 643.0                    |
| 18  | Jigawa      | 1250          | 24        | APC            | North West       | 5461000         | 1,276.5                  |
| 19  | Kaduna      | 1400          | 105       | APC            | North West       | 8042000         | 838.9                    |
| 20  | Kano        | 1300          | 95        | APC            | North West       | 13890000        | 1,146.3                  |
| 21  | Katsina     | 1000          | 36        | APC            | North West       | 8071000         | 1,190.7                  |
| 22  | Kebbi       | 1200          | 15        | APC            | North West       | 4028000         | 1,122.3                  |
| 23  | Kogi        | 1250          | 90        | APC            | North Central    | 4697000         | 245.5                    |
| 24  | Kwara       | 850           | 135       | PDP            | North Central    | 3363000         | 463.3                    |
| 25  | Lagos       | 63577890      | 1178      | APC            | South West       | 13960000        | 0                        |
| 26  | Nasarawa    | 1650          | 26        | APC            | North Central    | 3010000         | 634.7                    |
| 27  | Niger       | 1500          | 38        | APC            | North Central    | 5283000         | 634.4                    |
| 28  | Ogun        | 2500          | 248       | APC            | South West       | 5570000         | 81.8                     |
| 29  | Ondo        | 1500          | 116       | APC            | South West       | 4933000         | 316.7                    |
| 30  | Osun        | 2015000       | 203       | APC            | South West       | 5253000         | 218.9                    |
| 31  | Oyo         | 2000          | 292       | PDP            | South West       | 7562000         | 144                      |
| 32  | Plateau     | 1850          | 50        | APC            | North Central    | 4842000         | 1,033.4                  |
| 33  | Rivers      | 3650200       | 124       | PDP            | South South      | 7763000         | 504                      |
| 34  | Sokoto      | 1050          | 13        | APC            | North West       | 4909000         | 1,329                    |
| 35  | Taraba      | 1350          | 21        | PDP            | North East       | 2888000         | 1,386                    |
| 36  | Yobe        | 1100          | 23        | APC            | North East       | 3289000         | 1,614                    |
| 37  | Zamfara     | 1100          | 10        | APC            | North West       | 4382000         | 1,198                    |

# MODULE 2 - ANALYZING THE DATA TO ANSWER CRITICAL QUESTIONS
# Questions 1 : What's is the correlation between the rate of response between various Geo - political zones in Nigeria and their proximity to SERAP's locations? 
SERAP is located in Lagos, hence we will


- Once I had merged the two tables, I was able to analyze the results to achieve the following objectives:

# Analysis:
- The data was stored in an SQL database. 

*   To explore the distribution of respondents interested in SERAP's lawsuits across the 36 states and 6 regions, I used the SQL GROUP BY clause along with the ORDER BY clause to group the data by the 'GeopoliticalZone' and then by the 'StateName' and counted the number of respondents. Here is an SQL query for the analysis as shown below:

```sql
SELECT GeopoliticalZone, StateName, COUNT(Frequency) as Respondent_Count
FROM SERAPNigeriaStates
GROUP BY GeopoliticalZone, StateName
ORDER BY GeopoliticalZone;
```
This query returned a table showing the frequency of respondents from each state. The results showed that the highest concentration of respondents was in the South-West geopolitical zone, accounting for 45% of all responses. This was followed by the South-South and North-Central zones, with 25% and 15% of responses, respectively. The North-West and North-East zones had the lowest response rates, with 10% and 5% of responses, respectively.

# Visualization:
Using **Tableau** for my visualization, I have been able to generate the following insights:

![image](https://github.com/DDeji97/SERAPs-Lawsuits-Engagements/blob/main/imgs/Dashboard_for_GPZ.png)

In the map above, it is clear that there is a positive correlation between the amount of respondents in various states and and the states proximity to Lagos. 

![image](https://github.com/DDeji97/SERAPs-Lawsuits-Engagements/blob/main/imgs/Presentation1.jpg)
