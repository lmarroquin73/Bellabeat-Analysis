SELECT
  Id,
  TIME(ActivityHour) AS hour,
  MAX(Calories) AS Calories,
FROM
  `x-micron-438817-d6.fitbit_data.calories`
GROUP BY
  Id, TIME(ActivityHour)
ORDER BY
  Calories DESC;

