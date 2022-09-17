WITH HOTEL AS 
(SELECT * FROM DBO.['2018$']
UNION
SELECT * FROM DBO.['2019$']
UNION
SELECT * FROM DBO.['2020$'])
SELECT hotel,arrival_date_year, round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS REVENUE FROM HOTEL
GROUP BY hotel,arrival_date_year
order by hotel;