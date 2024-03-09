SELECT *
  FROM [international_debt].[dbo].[international_debt]

         --QUERY 1
SELECT top 5 * FROM international_debt

         --QUERY 2
SELECT COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

         --QUERY 3
SELECT DISTINCT indicator_code AS distinct_debt_indicators
FROM international_debt
ORDER BY distinct_debt_indicators;

         --QUERY 4
SELECT country_name, indicator_name
FROM international_debt
WHERE debt= (SELECT MAX(debt)
FROM international_debt
WHERE indicator_code ='DT.AMT.DLXF.CD');

         --QUERY 5
SELECT TOP 10 indicator_code,
COUNT (indicator_code) AS indicator_count
FROM international_debt
GROUP BY indicator_code
ORDER BY indicator_count DESC, indicator_code DESC


    
