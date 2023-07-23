select * from cement_data


--Question 9

select count(*) as Record
from cement_data
where water >200

--Question 10

SELECT COUNT(*) AS num_cases_fine_gt_700
FROM cement_data
WHERE Fine_Aggregate > 700
AND Coarse_Aggregate = 970

--Question 11

SELECT COUNT(*) AS num_records
FROM cement_data
WHERE Blast_Furnace_Slag < 100 and Superplasticizer > 10

--Question 12

SELECT TOP 10 PERCENT *
FROM cement_data
ORDER BY Strength Desc

--Question 13

SELECT COUNT(*) AS num_records_above_average
FROM cement_data
WHERE Strength > (
    SELECT AVG(Strength)
    FROM cement_data
)

--Question 14

SELECT Age,Water,SUM(Water) 
OVER (PARTITION BY Age ORDER BY Age) AS Cumulative_Water_Sum
FROM cement_data