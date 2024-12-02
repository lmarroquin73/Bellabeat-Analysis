SELECT 
  -- Step Data
  AVG(DISTINCT TotalSteps) AS total_steps,
  COUNT(DISTINCT TotalSteps) AS distinct_total_steps,
  
  -- Minutes Data
  AVG(DISTINCT VeryActiveMinutes) AS very_active_minutes,
  COUNT(DISTINCT VeryActiveMinutes) AS distinct_very_active_minutes,
  
  AVG(DISTINCT FairlyActiveMinutes) AS fairly_active_minutes,
  COUNT(DISTINCT FairlyActiveMinutes) AS distinct_fairly_active_minutes,
  
  AVG(DISTINCT LightlyActiveMinutes) AS lightly_active_minutes,
  COUNT(DISTINCT LightlyActiveMinutes) AS distinct_lightly_active_minutes,
  
  AVG(DISTINCT SedentaryMinutes) AS sedentary_minutes,
  COUNT(DISTINCT SedentaryMinutes) AS distinct_sedentary_minutes,
  
  -- Distance Data
  AVG(DISTINCT TotalDistance) AS total_distance,
  COUNT(DISTINCT TotalDistance) AS distinct_total_distance,
  
  AVG(DISTINCT VeryActiveDistance) AS very_active_distance,
  COUNT(DISTINCT VeryActiveDistance) AS distinct_very_active_distance,
  
  AVG(DISTINCT ModeratelyActiveDistance) AS moderately_active_distance,
  COUNT(DISTINCT ModeratelyActiveDistance) AS distinct_moderately_active_distance,
  
  AVG(DISTINCT LightActiveDistance) AS light_walking_distance,
  COUNT(DISTINCT LightActiveDistance) AS distinct_light_walking_distance,
  
  -- Calorie Data
  AVG(DISTINCT Calories) AS calories,
  COUNT(DISTINCT Calories) AS distinct_calories,

  -- Calculating Active vs. Sedentary Time
  AVG(DISTINCT VeryActiveMinutes + FairlyActiveMinutes + LightlyActiveMinutes) AS total_active_minutes,
  AVG(DISTINCT SedentaryMinutes) AS total_sedentary_minutes

FROM
  `x-micron-438817-d6.fitbit_data.daily_activity`;