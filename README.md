# <p align="center">Crime Against Women 2001-2014 (India)</p>
This project provides a comprehensive analysis of crimes against women in India between 2001 and 2014. Using SQL for data manipulation and Power BI for visualization, the project creates an interactive report to help identify key trends, state-wise crime distribution, and year-over-year crime growth.

**Tools Used:** Excel, MySQL, Tableau

[Datasets Used](https://www.kaggle.com/datasets/greeshmagirish/crime-against-women-20012014-india)


[SQL Analysis (Code)](https://github.com/tanu4419/Crime_Against_Women_2001-2014-India-/blob/main/Crime_Against_Women_SQL_Analysis.sql)

[Crime Against Women Report - PowerBI](https://github.com/tanu4419/Crime_Against_Women_2001-2014-India-/blob/main/Crime_Against_Women_Report_(Power_BI).png)

**Project Overview:**

The project aims to highlight the trends and distribution of major crimes against women, such as:
- Rape
- Dowry Deaths
- Domestic Violence
  
By using SQL for data extraction and Power BI for creating visualizations, this project sheds light on the states with the highest reported crimes, yearly trends, and distribution of crimes across different categories.

**Data Sourcse:**

The dataset used in this project includes information on reported crimes against women from 2001 to 2014 in India. It includes the following categories:
- Rape Cases
- Dowry Deaths
- Domestic Violence
- Kidnapping & Abduction
- Assault on Women

**Features:**
- KPI Section: Highlights total reported cases for each crime category.
- Bar Chart: Displays the top 5 states with the highest reported cases of each category.
- Pie Chart: Shows the percentage breakdown of different crime categories.
- Slicers: Interactive slicers for filtering the data by State and Year, enabling users to drill down into specific regions and time periods.

  
## Insights I Gathered:

## 1. Create a Dataset containing the 10 highest reported rape cases in India, in the span of years 2001-2014.
- Top 10 Highest Rape Cases
```mysql
select `STATE/UT`, Year, sum(Rape) as Total_Rape
from women_crime
group by `STATE/UT`, Year
order by sum(Rape) desc
limit 10;
```
Result: 

![Screenshot 2024-10-16 100945](https://github.com/user-attachments/assets/6b01aed2-ce87-4eb5-bbf8-2022c91f0772)

Madhya Pradesh, Rajasthan, and Uttar Pradesh consistently ranked among the top states with the highest number of reported rape cases in India between 2001 and 2014.
Maharashtra also frequently appeared in the top 10.
However, it's important to note that this analysis is limited to the reported cases. There may be unreported cases due to various factors, such as fear, stigma, and lack of trust in the legal system.
Further analysis is necessary to understand the underlying causes of high rape rates in these states and to develop effective strategies for prevention and response.

## 2. Create a Dataset containing the 10 highest reported deaths caused by Dowry cases in India, in the span of years 2001-2014.
- Top 10 Highest Dowry Deaths Cases
```mysql
select `STATE/UT`, Year, sum(`Dowry Deaths`) as Total_Dowry_Death
from women_crime
group by `STATE/UT`, Year
order by sum(`Dowry Deaths`) desc
limit 10;
```
Result: 

![Q2](https://github.com/user-attachments/assets/d2ce1a2b-97d4-4646-bc5e-60ba27545aa2)

Uttar Pradesh consistently reported the highest number of dowry deaths in India between 2001 and 2014, accounting for all of the top 10 cases. This highlights a significant issue within the state regarding dowry-related violence.

## 3. Create a dataset containing the 10 highest reported Domestic violence cases in India, in the span of years 2001-2014.
- Top 10 Highest Domestic Violence Cases
```mysql
select `STATE/UT`, Year, 
sum(`Cruelty by Husband or his Relatives`) as Domestic_Violence_Case
from women_crime
group by `STATE/UT`, Year
order by sum(`Cruelty by Husband or his Relatives`) desc
limit 10; 
```
Result: 

![Q2](https://github.com/user-attachments/assets/d2ce1a2b-97d4-4646-bc5e-60ba27545aa2)

West Bengal consistently reported the highest number of domestic violence cases between 2001 and 2014, indicating a significant prevalence of this issue within the state.
Rajasthan and Andhra Pradesh also reported relatively high numbers of domestic violence cases.

## 4. Create a Dataset containing the 10 highest reported Importation cases in India, in the span of years 2001-2014.
- Top 10 Highest Importation Cases
```mysql
select `STATE/UT`, Year, 
sum(`Importation of Girls`) as Importatio_Case
from women_crime
group by `STATE/UT`, Year
order by sum(`Importation of Girls`) desc
limit 10;
```
Result: 

![Q2](https://github.com/user-attachments/assets/d2ce1a2b-97d4-4646-bc5e-60ba27545aa2)

Bihar reported the highest number of reported cases of importation of girls between 2001 and 2014, followed by West Bengal and Jharkhand. This indicates a significant prevalence of this issue in these states.

## 5. Find out the total number of cases, in the span of 2001-2014 under each category, state-wise.
```mysql
select  `STATE/UT`, 
sum(Rape) as Total_Rape,sum(`Dowry Deaths`) as Total_Dowry_Death,
sum(`Cruelty by Husband or his Relatives`) as Domestic_Violence_Case, 
sum(`Importation of Girls`) as Importatio_Case, 
sum(`Insult to modesty of Women`) as Modesty_Case, 
sum(`Assault on women with intent to outrage her modesty`) as Assault_Case,
sum(`Kidnapping and Abduction`) as Total_Kidnapping_Abduction_Case
from women_crime
group by `STATE/UT`
order by  Total_Rape, Total_Dowry_Death,
Domestic_Violence_Case, Importatio_Case,Modesty_Case,
Assault_Case,Total_Kidnapping_Abduction_Case desc;
```
Result: 

![Q2](https://github.com/user-attachments/assets/d2ce1a2b-97d4-4646-bc5e-60ba27545aa2)

Uttar Pradesh reported the highest number of cases across all categories.
Madhya Pradesh and West Bengal also reported high numbers of cases in most categories.
States like Lakshdweep, Daman & Diu, and D & N Haveli reported significantly lower numbers of cases in all categories.

## 6. Find out the top 5 states, where the maximum number of cases has been reported in TOTAL in the span of 2001-2014, each category-wise.
	• For the "Rape" case 
	• For Kidnapping and abduction case 
	• For cases of deaths due to dowry 
	• For Domestic Violence case 
	• For the Importation of Girls case
 
- For the "Rape" case 
```mysql
select `STATE/UT`,sum(Rape) as Total_Rape
from women_crime
group by `STATE/UT`
order by  Total_Rape desc
limit 5;
```
Result: 

![Q2](https://github.com/user-attachments/assets/d2ce1a2b-97d4-4646-bc5e-60ba27545aa2)

Madhya Pradesh has the highest number of reported rape cases (45,498), followed by Uttar Pradesh, Maharashtra, West Bengal, and Rajasthan. This shows that these states have a higher incidence of reported rape cases and may need stronger measures to improve women's safety.

- For Kidnapping and abduction case 
```mysql
select `STATE/UT`,
sum(`Kidnapping and Abduction`) as Total_Kidnapping_Abductind_Case
from women_crime
group by `STATE/UT`
order by Total_Kidnapping_Abductind_Case  desc
limit 5;  
```
Result: 

![Q3](https://i.ibb.co/tMXV1yp/Screen-Shot-2023-07-09-at-9-47-24-PM.png)

Uttar Pradesh has the highest number of reported kidnapping and abduction cases (67,953), followed by Rajasthan, Assam, West Bengal, and Bihar between 2001 and 2014. This indicates that these states face significant issues related to kidnapping and abduction, which may require focused efforts to improve law enforcement and public safety measures.

- For cases of deaths due to dowry 
```mysql
select `STATE/UT`,
sum(`Dowry Deaths`) as Total_Dowry_Case
from women_crime
group by `STATE/UT`
order by  Total_Dowry_Case desc
limit 5; 
```
Result: 

![Q4](https://i.ibb.co/Y7Qjvg5/Screen-Shot-2023-07-09-at-9-49-36-PM.png)

Uttar Pradesh reports the highest number of dowry deaths (28,628), followed by Bihar, Madhya Pradesh, Andhra Pradesh, and West Bengal between 2001 and 2014. These states show a severe issue with dowry-related violence, highlighting the urgent need for stronger enforcement of dowry laws and protective measures for women.

- For Domestic Violence case 
```mysql
select `STATE/UT`,
sum(`Cruelty by Husband or his Relatives`) as Domestic_Violence_Case
from women_crime
group by `STATE/UT`
order by  Domestic_Violence_Case desc
limit 5; 
```
Result: 

![Q4](https://i.ibb.co/Y7Qjvg5/Screen-Shot-2023-07-09-at-9-49-36-PM.png)

West Bengal has the highest number of domestic violence cases (172,062), followed by Andhra Pradesh, Rajasthan, Uttar Pradesh, and Maharashtra between 2001 and 2014. These states face significant domestic violence issues, emphasizing the need for more robust support systems and legal protections for affected women.

-  For the Importation of Girls case
```mysql
select `STATE/UT`,
sum(`Importation of Girls`) as Total_Importation_Case
from women_crime
group by `STATE/UT`
order by  Total_Importation_Case desc
limit 5; 
```
Result: 

![Q4](https://i.ibb.co/Y7Qjvg5/Screen-Shot-2023-07-09-at-9-49-36-PM.png)

Bihar reports the highest number of cases of importation of girls (452), followed by Jharkhand, West Bengal, Madhya Pradesh, and Karnataka between 2001 and 2014. This highlights the prevalence of human trafficking in these states, especially Bihar, indicating a need for stronger measures to combat trafficking and protect vulnerable women and girls.

## Conclusion 
By exploring various aspects of the dataset, a comprehensive understanding of Netflix's content landscape was gained. The analysis revealed the top 10 and bottom 10 movies and shows based on their IMDB scores, which highlighted the titles that garnered high praise and those that received lower ratings. This information can 
