# SERAP's Lawsuits Engagements
# Introduction 
Nigeria, with a population exceeding 223 million, holds the distinction of being Africa's most populous nation. Surprisingly, only 4 out of 10 Nigerians actively participate in political matters, leading to a serious dearth of accountability and transparency in governance. Efforts from various Non-Governmental Organizations (NGOs) and Civil Society Organizations (CSOs) to foster civic engagement have encountered substantial challenges, with millions of dollars spent across the 36 states, yielding limited success.

SERAP Nigeria, a leading NGO dedicated to fostering transparency and accountability, recently garnered the attention of over 3000 Nigerians, inviting them to join the movement against irrational spending by the 9th National Assembly. Analyzing the distribution of responses across the 36 states and the FCT promises fascinating insights crucial for addressing the persisting challenges faced by NGOs and CSOs in the country.


![image](https://github.com/DDeji97/SERAPs-Lawsuits-Engagements/blob/main/Presentation1.jpg)

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
(1, 'Abia', 1200, 134), (2, 'Adamawa', 1500, 42), (3, 'Akwa Ibom', 1100, 106), (4, 'Anambra', 1450, 216), (5, 'Bauchi', 950, 27), (6, 'Bayelsa', 1200, 25), (7, 'Benue', 1350, 87), (8, 'Borno', 1500, 49), (9, 'Cross River', 250000, 54), (10, 'Delta', 1450, 204), (11, 'Ebonyi', 1050, 39), (12, 'Edo', 1100, 167), (13, 'Ekiti', 1450, 101), (14, 'Enugu', 1300, 123), (15, 'FCT', 19250854, 209), (16, 'Gombe', 1250, 23), (17, 'Imo', 1300, 143), (18, 'Jigawa', 1250, 24), (19, 'Kaduna', 1400, 105), (20, 'Kano', 1300, 95), (21, 'Katsina', 1000, 36), (22, 'Kebbi', 1200, 15), (23, 'kogi', 1250, 90), (24, 'kwara', 850, 135), (25, 'Lagos', 63577890, 1178), (26, 'Nasarawa', 1650, 26), (27, 'Niger', 1500, 38), (28, 'Ogun', 2500, 248), (29, 'Ondo', 1500, 116), (30, 'Osun', 2015000, 203), (31, 'Oyo', 2000, 292), (32, 'Plateau', 1850, 50), (33, 'Rivers', 3650200, 124), (34, 'Sokoto', 1050, 13), (35, 'Taraba', 1350, 21), (36, 'Yobe', 1100, 23), (37, 'Zamfara', 1100, 10);
```
 **Table2(StateBudgets)**
 
<a name="header1"></a>
[![licence badge]][licence]
[![stars badge]][stars]
[![forks badge]][forks]
[![issues badge]][issues]
[![contributors_badge]][contributors]
