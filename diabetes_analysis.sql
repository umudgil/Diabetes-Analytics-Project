-- Using the schema that I created
USE `Diabetes analytics project`;

-- 1. Previewing the data
SELECT * FROM diabetes_dataset;

-- 2. Calculate a custom Risk_Score for each individual
SELECT *,
  CASE
    WHEN HbA1c > 6.5 THEN 1 ELSE 0 END +
  CASE WHEN Fasting_Blood_Glucose > 125 THEN 1 ELSE 0 END +
  CASE WHEN BMI > 30 THEN 1 ELSE 0 END +
  Family_History_of_Diabetes AS Risk_Score
FROM diabetes_dataset;

-- 3. Group people by age range and calculate:
SELECT
  CASE
    WHEN Age < 30 THEN 'Under 30'
    WHEN Age BETWEEN 30 AND 45 THEN '30-45'
    WHEN Age BETWEEN 46 AND 60 THEN '46-60'
    ELSE '60+'
  END AS Age_Group,
  AVG(Risk_Score) AS Avg_Risk,
  COUNT(*) AS Group_Size
FROM (
  SELECT *,
    (
      CASE WHEN HbA1c > 6.5 THEN 1 ELSE 0 END +
      CASE WHEN Fasting_Blood_Glucose > 125 THEN 1 ELSE 0 END +
      CASE WHEN BMI > 30 THEN 1 ELSE 0 END
    ) AS Risk_Score
  FROM diabetes_dataset
) AS scored_dataset
GROUP BY Age_Group;

-- 4. Analyze how lifestyle factors affect health indicators
SELECT Physical_Activity_Level, Smoking_Status,
  AVG(BMI) AS Avg_BMI,
  AVG(HbA1c) AS Avg_HbA1c
FROM diabetes_dataset
GROUP BY Physical_Activity_Level, Smoking_Status
ORDER BY Avg_HbA1c DESC;

-- 5. Identify high-risk individuals
SELECT * FROM diabetes_dataset
WHERE BMI > 40 OR HbA1c > 12 OR Blood_Pressure_Systolic > 180;