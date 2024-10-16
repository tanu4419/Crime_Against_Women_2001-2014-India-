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

- Bottom 10 Movies
```mysql
SELECT title, 
type, 
imdb_score
FROM shows_movies.titles
WHERE type = 'MOVIE'
ORDER BY imdb_score ASC
LIMIT 10
```
Result: 

![Q3](https://i.ibb.co/tMXV1yp/Screen-Shot-2023-07-09-at-9-47-24-PM.png)

- Bottom 10 Shows
```mysql
SELECT title, 
type, 
imdb_score
FROM shows_movies.titles
WHERE type = 'SHOW'
ORDER BY imdb_score ASC
LIMIT 10
```
Result: 

![Q4](https://i.ibb.co/Y7Qjvg5/Screen-Shot-2023-07-09-at-9-49-36-PM.png)

An IMDB score is a widely recognized measure of the overall quality and popularity of a movie or show. The top 10 movies and shows stood out for their exceptional 

## 2. How many movies and shows fall in each decade in Netflix's library?
```mysql
SELECT CONCAT(FLOOR(release_year / 10) * 10, 's') AS decade,
	COUNT(*) AS movies_shows_count
FROM shows_movies.titles
WHERE release_year >= 1940
GROUP BY CONCAT(FLOOR(release_year / 10) * 10, 's')
ORDER BY decade;
```
Result: 

![Q5](https://i.ibb.co/8dTzVZ3/Screen-Shot-2023-07-09-at-10-02-18-PM.png)

The results of the SQL query provide a fascinating insight into the distribution of movies and shows across different decades in Netflix's library. The data 


## 3. How did age-certifications impact the dataset?
```mysql
SELECT DISTINCT age_certification, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM shows_movies.titles
GROUP BY age_certification
ORDER BY avg_imdb_score DESC
```
Result: 

![Q6](https://i.ibb.co/SvJyjgF/Screen-Shot-2023-07-09-at-10-16-52-PM.png)

```mysql
SELECT age_certification, 
COUNT(*) AS certification_count
FROM shows_movies.titles
WHERE type = 'Movie' 
AND age_certification != 'N/A'
GROUP BY age_certification
ORDER BY certification_count DESC
LIMIT 5;
```
Results: 

![Q7](https://i.ibb.co/T0f5cNq/Screen-Shot-2023-07-09-at-10-20-23-PM.png)

The first query focused on the average IMDB scores associated with each age certification, revealing interesting trends in audience ratings. According to the 


## 4. Which genres are the most common? 
- Top 10 most common genres for MOVIES
```mysql
SELECT genres, 
COUNT(*) AS title_count
FROM shows_movies.titles 
WHERE type = 'Movie'
GROUP BY genres
ORDER BY title_count DESC
LIMIT 10;
```
Result:

![Q8](https://i.ibb.co/VWrgd8m/Screen-Shot-2023-07-10-at-12-25-40-PM.png)

- Top 10 most common genres for SHOWS
```mysql
SELECT genres, 
COUNT(*) AS title_count
FROM shows_movies.titles 
WHERE type = 'Show'
GROUP BY genres
ORDER BY title_count DESC
LIMIT 10;
```
Result: 

![Q9](https://i.ibb.co/P59s4X7/Screen-Shot-2023-07-10-at-12-27-41-PM.png)

- Top 3 most common genres OVERALL
```mysql
SELECT t.genres, 
COUNT(*) AS genre_count
FROM shows_movies.titles AS t
WHERE t.type = 'Movie' or t.type = 'Show'
GROUP BY t.genres
ORDER BY genre_count DESC
LIMIT 3;
```
Result: 

![Q10](https://i.ibb.co/qMvMBGf/Screen-Shot-2023-07-10-at-12-30-04-PM.png)

By analyzing the frequency of genres, we can gain a better understanding of the content that dominates the platform and the preferences of its audience. Starting 
## Conclusion 
By exploring various aspects of the dataset, a comprehensive understanding of Netflix's content landscape was gained. The analysis revealed the top 10 and bottom 10 movies and shows based on their IMDB scores, which highlighted the titles that garnered high praise and those that received lower ratings. This information can 
