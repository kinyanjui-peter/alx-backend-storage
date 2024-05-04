-- List all bands with Glam rock as their main style, ranked by their longevity.

-- Requirements:
-- 1. Import the provided table dump: metal_bands.sql.zip.
-- 2. Use the column names 'band_name' and 'lifespan' (in years).
-- 3. Calculate the lifespan using the 'formed' and 'split' attributes.
-- 4. Your script should be compatible with any database.

SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
