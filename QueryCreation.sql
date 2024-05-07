/* Designing benchmarking queries */


/* Video Game Sales Dataset */

/* Objective: Retrieve Top-Selling Games By Region
This covers Retrieval. It focuses on retrieving specific data fields from the dataset. */

SELECT NAME, PLATFORM, GENRE, PUBLISHER, GLOBAL_SALES 
    FROM VIDEOGAMESALES ORDER BY GLOBAL_SALES DESC;


/* Objective: Aggregate Sales by Platform
This Query aggregates the sales data by platform, calculating the total sales for each platform using the SUM function. */

SELECT PLATFORM, SUM(GLOBAL_SALES) AS Total_Sales
    FROM VIDEOGAMESALES GROUP BY PLATFORM ORDER BY Total_Sales DESC;



/* Netflix Movies & TV Shows Dataset
Objective: Measuring the performance of filtering movies by genre. 
This covers filtering */

SELECT * FROM NETFLIXDATA WHERE TYPE = 'Movie' AND LISTED_IN LIKE '%Action%';


/* Count TV shows by release year */
/*This covers aggregation*/
SELECT RELEASE_YEAR , COUNT(*) AS Total_TV_Shows FROM NETFLIXDATA WHERE
    TYPE = 'TV Show' GROUP BY RELEASE_YEAR  ORDER BY RELEASE_YEAR ;


/* Pokemon Dataset
Objective: Determine performance of identifying 'legendary' Pokemon, showing retrieval. */
SELECT * FROM PokemonData WHERE LEGENDARY = TRUE;


/*This query calculates average statistics for each pokemon type, showcasing aggregation. */

SELECT TYPE1, AVG(HP) AS Avg_HP, AVG(ATTACK) AS Avg_Attack, AVG(DEFENSE) AS Avg_Defense
    FROM POKEMONDATA GROUP BY TYPE1;