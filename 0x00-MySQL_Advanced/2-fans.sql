-- Select the origin of metal bands along with the total number of fans for each origin.
-- The results are grouped by origin and ordered by the total number of fans in descending order.

SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
