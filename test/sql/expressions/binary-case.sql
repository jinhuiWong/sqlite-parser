SELECT
  CASE
    WHEN bee = 'red' THEN 'ANGRY'
    WHEN bee = 'green' THEN 'HAPPY'
    ELSE 'NEUTRAL'
  END AS beestate
FROM bees
