Use PROJECT
GO
--SELECT * FROM [vaccination-data - cleaned]

				--QUESTIONS FROM THE DATASET

-- 1. Which Country had the highest vaccinations?
--SELECT Top 1 COUNTRY, TOTAL_VACCINATIONS
--FROM [vaccination-data - cleaned]
--ORDER BY TOTAL_VACCINATIONS DESC;

-- 2. Which Region had the most fully vaccinated persons?
--SELECT Top 1 WHO_REGION, sum(PERSONS_FULLY_VACCINATED) AS TOTAL_FULL_VACCINATIONS
--FROM [vaccination-data - cleaned]
--GROUP BY WHO_REGION
--ORDER BY TOTAL_FULL_VACCINATIONS DESC;

-- 3. How many Total Vaccinations were recorded in EURO
--SELECT WHO_REGION, sum(TOTAL_VACCINATIONS) AS TOTAL_VACCINATIONS
--FROM [vaccination-data - cleaned]
--WHERE WHO_REGION = 'EURO'
--GROUP BY WHO_REGION;

-- 4. Which Country was the first to start vaccination?
--SELECT Top 1 COUNTRY, FIRST_VACCINE_DATE AS VACCINATION_COMMENCEMENT_DATE
--FROM [vaccination-data - cleaned]
--WHERE FIRST_VACCINE_DATE IS NOT NULL
--ORDER BY FIRST_VACCINE_DATE ASC;

-- 5. How many persons were not fully vaccinated in Nigeria?
--SELECT COUNTRY, TOTAL_VACCINATIONS, PERSONS_FULLY_VACCINATED, (TOTAL_VACCINATIONS - PERSONS_FULLY_VACCINATED) AS PERSONS_NOT_FULLY_VACCINATED
--FROM [vaccination-data - cleaned]
--WHERE COUNTRY = 'Nigeria';

-- 6. Which countries used AstraZeneca - Vaxzevria?
--SELECT COUNTRY, WHO_REGION, VACCINES_USED
--FROM [vaccination-data - cleaned]
--WHERE VACCINES_USED LIKE '%AstraZeneca - Vaxzevria%';

-- 7. How many persons received a booster dose in Mexico?
--SELECT COUNTRY, PERSONS_BOOSTER_ADD_DOSE
--FROM [vaccination-data - cleaned]
--WHERE COUNTRY = 'Mexico';

-- 8. Which country has the highest percentage of fully vaccinated persons per 100 people?
--SELECT COUNTRY, PERSONS_FULLY_VACCINATED_PER100, TOTAL_VACCINATIONS_PER100, (PERSONS_FULLY_VACCINATED_PER100/TOTAL_VACCINATIONS_PER100 * 100) AS PERCENTAGE_OF_FULLY_VACCINATED_PERSONS_PER100
--FROM [vaccination-data - cleaned]
--WHERE PERSONS_FULLY_VACCINATED IS NOT NULL AND TOTAL_VACCINATIONS IS NOT NULL
--ORDER BY COUNTRY;