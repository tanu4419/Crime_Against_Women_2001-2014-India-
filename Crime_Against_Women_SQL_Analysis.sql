-- 1) Create a Dataset containing the 10 highest reported rape cases in India, in the span of years 2001-2014.
select `STATE/UT`, Year, sum(Rape) as Total_Rape
from women_crime
group by `STATE/UT`, Year
order by sum(Rape) desc
limit 10;

-- 2) Create a Dataset containing the 10 highest reported deaths caused by Dowry cases in India, in the span of years 2001-2014.
select `STATE/UT`, Year, sum(`Dowry Deaths`) as Total_Dowry_Death
from women_crime
group by `STATE/UT`, Year
order by sum(`Dowry Deaths`) desc
limit 10;

-- 3) Create a dataset containing the 10 highest reported Domestic violence cases in India, in the span of years 2001-2014.
select `STATE/UT`, Year, 
sum(`Cruelty by Husband or his Relatives`) as Domestic_Violence_Case
from women_crime
group by `STATE/UT`, Year
order by sum(`Cruelty by Husband or his Relatives`) desc
limit 10; 

-- 4) Create a Dataset containing the 10 highest reported Importation cases in India, in the span of years 2001-2014.
 select `STATE/UT`, Year, 
 sum(`Importation of Girls`) as Importatio_Case
from women_crime
group by `STATE/UT`, Year
order by sum(`Importation of Girls`) desc
limit 10;

-- 5) Find out the total number of cases, in the span of 2001-2014 under each category, state-wise.
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

/*6) Find out the top 5 states, where the maximum number of cases has been reported in TOTAL in the span of 2001-2014, each category-wise.
	• For the "Rape" case 
	• For Kidnapping and abduction case 
	• For cases of deaths due to dowry 
	• For Domestic Violence case 
	• For the Importation of Girls case */

-- For the "Rape" case 
select `STATE/UT`,sum(Rape) as Total_Rape
from women_crime
group by `STATE/UT`
order by  Total_Rape desc
limit 5;

-- For Kidnapping and abduction case 
select `STATE/UT`,
sum(`Kidnapping and Abduction`) as Total_Kidnapping_Abductind_Case
from women_crime
group by `STATE/UT`
order by Total_Kidnapping_Abductind_Case  desc
limit 5;  

-- For cases of deaths due to dowry
select `STATE/UT`,
sum(`Dowry Deaths`) as Total_Dowry_Case
from women_crime
group by `STATE/UT`
order by  Total_Dowry_Case desc
limit 5; 

-- For Domestic Violence case
select `STATE/UT`,
sum(`Cruelty by Husband or his Relatives`) as Domestic_Violence_Case
from women_crime
group by `STATE/UT`
order by  Domestic_Violence_Case desc
limit 5; 

-- For the Importation of Girls case
select `STATE/UT`,
sum(`Importation of Girls`) as Total_Importation_Case
from women_crime
group by `STATE/UT`
order by  Total_Importation_Case desc
limit 5;
