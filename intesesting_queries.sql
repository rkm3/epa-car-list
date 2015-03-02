
SELECT YEAR, count(*)
FROM all_years_make_model
GROUP BY 1;

SELECT make, COUNT(DISTINCT trim(model)) AS models, COUNT(*) ct, group_concat(DISTINCT trim(model))
FROM all_years_make_model
GROUP BY 1
;

SELECT make, trim(model) AS models, COUNT(*) ct, COUNT(DISTINCT YEAR) AS years, group_concat(DISTINCT trim(YEAR)) AS years
FROM all_years_make_model
WHERE lower(model) LIKE '%suburban%'
GROUP BY 1,2
;
