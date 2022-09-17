WITH HOTEL AS 
(SELECT * FROM DBO.['2018$']
UNION
SELECT * FROM DBO.['2019$']
UNION
SELECT * FROM DBO.['2020$'])
SELECT * FROM HOTEL as h
LEFT JOIN dbo.market_segment$ ON h.market_segment=market_segment$.market_segment
left join dbo.meal_cost$ as m on h.meal=m.meal;
