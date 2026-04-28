
with investment_long as (
  SELECT 
  region, 
  invest_field, 
  2022 AS year,
  `2022_year` AS investment
FROM `hjglkj.Investment.Investment to Ukraine`

UNION ALL

SELECT 
  region,
  invest_field,
  2023 AS year,
`2023_year` AS investment
FROM `hjglkj.Investment.Investment to Ukraine`

UNION ALL

SELECT 
  region,
  invest_field,
  2024 AS year,
  `2024_year` AS investment
FROM `hjglkj.Investment.Investment to Ukraine`
)
select 
region,
invest_field,
year,
SUM(investment) AS total_investment
from investment_long
group by region, year,invest_field






