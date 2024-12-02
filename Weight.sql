SELECT
  Id,
  MAX(WeightPounds) AS WeightPounds,
  MAX(BMI) AS BMI,
  CASE
    WHEN MAX(BMI) > 25 THEN 'Overweight'
    ELSE 'Not Overweight'
  END AS WeightCategory
FROM
  `x-micron-438817-d6.fitbit_data.weight_info`
GROUP BY
  Id;
