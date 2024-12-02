SELECT
  Id,
  TIME(ActivityHour) AS hour,
  MAX(TotalIntensity) AS Intensity,
FROM
  `x-micron-438817-d6.fitbit_data.hourly_activity`
GROUP BY
  Id, TIME(ActivityHour)
ORDER BY
  Intensity DESC;
