WITH HOTEL AS 
(SELECT * FROM DBO.['2018$']
UNION
SELECT * FROM DBO.['2019$']
UNION
SELECT * FROM DBO.['2020$'])
SELECT (stays_in_week_nights+stays_in_weekend_nights)*adr AS REVENUE FROM HOTEL;

