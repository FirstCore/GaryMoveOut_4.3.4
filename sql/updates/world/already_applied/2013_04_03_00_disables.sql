-- Réactivation des sorts qui ne crash plus
DELETE FROM disables WHERE sourceType = 0 AND entry IN (30541, 63665, 31298, 51904, 2895, 68933, 29200, 70936);