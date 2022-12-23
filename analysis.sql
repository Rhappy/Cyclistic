/*____________________________________________________________________________________________*/
/* Identifying age of users */
SELECT  
  COUNT(*) as count_birth_year,
  birth_year,
  EXTRACT(YEAR from CURRENT_DATE) as today,
  EXTRACT(YEAR from start_time) as year,
FROM
  `Cyclistic.cyclistic_trips_2013`
WHERE
  birth_year IS NOT NULL 
GROUP BY
  birth_year, year, today

UNION ALL

SELECT  
  COUNT(*) as count_birth_year,
  birth_year,
  EXTRACT(YEAR from CURRENT_DATE) as today,
  EXTRACT(YEAR from start_time) as year,
FROM
  `Cyclistic.cyclistic_trips_2014`
WHERE
  birth_year IS NOT NULL 
GROUP BY
  birth_year, year, today

UNION ALL

SELECT  
  COUNT(*) as count_birth_year,
  birth_year,
  EXTRACT(YEAR from CURRENT_DATE) as today,
  EXTRACT(YEAR from start_time) as year,
FROM
  `Cyclistic.cyclistic_trips_2015`
WHERE
  birth_year IS NOT NULL 
GROUP BY
  birth_year, year, today

UNION ALL

SELECT  
  COUNT(*) as count_birth_year,
  birth_year,
  EXTRACT(YEAR from CURRENT_DATE) as today,
  EXTRACT(YEAR from start_time) as year,
FROM
  `Cyclistic.cyclistic_trips_2016`
WHERE
  birth_year IS NOT NULL
GROUP BY
  birth_year, year, today

UNION ALL

SELECT  
  COUNT(*) as count_birth_year,
  birth_year,
  EXTRACT(YEAR from CURRENT_DATE) as today,
  EXTRACT(YEAR from start_time) as year,
FROM
  `Cyclistic.cyclistic_trips_2017`
WHERE
  birth_year IS NOT NULL
GROUP BY
  birth_year, year, today

UNION ALL

SELECT  
  COUNT(*) as count_birth_year,
  birth_year,
  EXTRACT(YEAR from CURRENT_DATE) as today,
  EXTRACT(YEAR from start_time) as year,
FROM
  `Cyclistic.cyclistic_trips_2018`
WHERE
  birth_year IS NOT NULL 
GROUP BY
  birth_year, year, today

ORDER BY 
  year ASC, 
  count_birth_year DESC;



/*____________________________________________________________________________________________*/
/*  Duration of trips */
SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2013`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2014`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2015`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2016`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2017`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2018`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2019`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2020`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2021`

UNION ALL

SELECT 
  EXTRACT(TIME from start_time) as start_time,
  EXTRACT(TIME from end_time) as end_time,
  EXTRACT(YEAR FROM start_time) as year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_2022`

ORDER BY
  year ASC;

#Cyclistic_trips_time generated for the analysis 
SELECT 
  TIME_DIFF(end_time, start_time, MINUTE) as trip_duration,
  year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_time`
ORDER BY
  year ASC, trip_duration DESC;

SELECT 
  CAST(AVG(trip_duration) as INT64) as average_trip_duration,
  year, 
  user_type
FROM 
  `Cyclistic.cyclistic_trips_time`
WHERE
  user_type IS NOT NULL
GROUP BY 
  year, user_type
ORDER BY
  year ASC;


/*____________________________________________________________________________________________*/
/* Analysing starting and ending trip locations */
SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2013`

UNION ALL

SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2014`

UNION ALL

SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2015`

UNION ALL

SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2016`

UNION ALL

SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2017`

UNION ALL

SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2018`
  
UNION ALL

SELECT
  trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name
FROM
  `Cyclistic.cyclistic_trips_2019`


/* Temporary file generated used in both station analyses */
/* 2013 - 2020 + stations = Analysing most visited stations for user type */
/* Since files from 2020 to 2022 have the latitude and longitude informations, to make the code clearer, these datasets were added later. */
SELECT
  DISTINCT a.trip_id,
  a.year,
  a.user_type,
  a.start_station_id,
  a.start_station_name,
  b.latitude as start_lat,
  b.longitude as start_long,
  a.end_station_id,
  a.end_station_name,
  c.latitude as end_lat,
  c.longitude as end_long
FROM 
  `Cyclistic.cyclistic_trips_and_stations` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_id = b.ID
  FULL JOIN `Cyclistic.cyclistic_stations` as c
  ON a.end_station_id = c.ID

UNION ALL

SELECT
  DISTINCT trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  start_lat,
  start_long,
  end_station_id,
  end_station_name,
  end_lat,
  end_long
FROM
  `Cyclistic.cyclistic_trips_2020`

UNION ALL

SELECT
  DISTINCT trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  start_lat,
  start_long,
  end_station_id,
  end_station_name,
  end_lat,
  end_long
FROM
  `Cyclistic.cyclistic_trips_2021`

UNION ALL

SELECT
  DISTINCT trip_id,
  EXTRACT(YEAR from start_time) as year,
  user_type,
  start_station_id,
  start_station_name,
  start_lat,
  start_long,
  end_station_id,
  end_station_name,
  end_lat,
  end_long
FROM
  `Cyclistic.cyclistic_trips_2022`;



/* Most visited stations for members */
SELECT
  a.station_name,
  SUM(a.occurrence) as occurrence,
  a.station_id,
  b.latitude,
  b.longitude,
  a.user_type
FROM 
  (
  SELECT 
    c.start_station_name as station_name,
    COUNT(c.start_station_name) as occurrence,
    c.start_station_id as station_id,
    c.user_type
  FROM 
    `Cyclistic.cyclistic_trips_and_stations` as c
  GROUP BY
    station_name,station_id, user_type

  UNION ALL

  SELECT 
    d.end_station_name as station_name,
    COUNT(d.end_station_name) as occurrence,
    d.end_station_id as station_id,
    d.user_type
  FROM 
    `Cyclistic.cyclistic_trips_and_stations` as d
  GROUP BY
    station_name, station_id, user_type
  ) as a

  INNER JOIN `Cyclistic.cyclistic_stations` as b
  ON a.station_id = b.id

WHERE
  a.user_type = 'member'
GROUP BY
  a.station_name, a.station_id, b.latitude, b.longitude, a.user_type
ORDER BY
  occurrence DESC
LIMIT
  20;


/* Most visited stations for casual users */
SELECT
  a.station_name,
  SUM(a.occurrence) as occurrence,
  a.station_id,
  b.latitude,
  b.longitude,
  a.user_type
FROM 
  (
  SELECT 
    c.start_station_name as station_name,
    COUNT(c.start_station_name) as occurrence,
    c.start_station_id as station_id,
    c.user_type
  FROM 
    `Cyclistic.cyclistic_trips_and_stations` as c
  GROUP BY
    station_name,station_id, user_type

  UNION ALL

  SELECT 
    d.end_station_name as station_name,
    COUNT(d.end_station_name) as occurrence,
    d.end_station_id as station_id,
    d.user_type
  FROM 
    `Cyclistic.cyclistic_trips_and_stations` as d
  GROUP BY
    station_name, station_id, user_type
  ) as a

  INNER JOIN `Cyclistic.cyclistic_stations` as b
  ON a.station_id = b.id

WHERE
  a.user_type = 'casual'
GROUP BY
  a.station_name, a.station_id, b.latitude, b.longitude, a.user_type
ORDER BY
  occurrence DESC
LIMIT
  20;


/* Rides per month through the years */ 
/* MEMBERS */
SELECT 
  COUNT(*) as quantity,
  user_type,
  month,
  year
FROM
  (
  SELECT
    user_type,
    CASE
      WHEN month=01 THEN 'January'
      WHEN month=02 THEN 'February'
      WHEN month=03 THEN 'March'
      WHEN month=04 THEN 'April'
      WHEN month=05 THEN 'Mars'
      WHEN month=06 THEN 'June'
      WHEN month=07 THEN 'July'
      WHEN month=08 THEN 'August'
      WHEN month=09 THEN 'September'
      WHEN month=10 THEN 'October'
      WHEN month=11 THEN 'November'
      WHEN month=12 THEN 'December'
    END as month,
    year
  FROM
    (
    SELECT
    user_type,
    CAST(EXTRACT(MONTH from start_time) as INT64) as month,
    CAST(EXTRACT(YEAR from start_time) as INT64) as year
    FROM
    `Cyclistic.cyclistic_trips_2013`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2014`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2015`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2016`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2017`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2018`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2019`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2020`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2021`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2022`
    ))
WHERE
  user_type = 'member'
GROUP BY
  month, year, user_type
ORDER BY
  year ASC;



/* CASUALS */
SELECT 
  COUNT(*) as quantity,
  user_type,
  month,
  year
FROM
  (
  SELECT
    user_type,
    CASE
      WHEN month=01 THEN 'January'
      WHEN month=02 THEN 'February'
      WHEN month=03 THEN 'March'
      WHEN month=04 THEN 'April'
      WHEN month=05 THEN 'Mars'
      WHEN month=06 THEN 'June'
      WHEN month=07 THEN 'July'
      WHEN month=08 THEN 'August'
      WHEN month=09 THEN 'September'
      WHEN month=10 THEN 'October'
      WHEN month=11 THEN 'November'
      WHEN month=12 THEN 'December'
    END as month,
    year
  FROM
    (
    SELECT
    user_type,
    CAST(EXTRACT(MONTH from start_time) as INT64) as month,
    CAST(EXTRACT(YEAR from start_time) as INT64) as year
    FROM
    `Cyclistic.cyclistic_trips_2013`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2014`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2015`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2016`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2017`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2018`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2019`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2020`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2021`

    UNION ALL

    SELECT
      user_type,
      CAST(EXTRACT(MONTH from start_time) as INT64) as month,
      CAST(EXTRACT(YEAR from start_time) as INT64) as year
      FROM
      `Cyclistic.cyclistic_trips_2022`
    ))
WHERE
  user_type = 'casual'
GROUP BY
  month, year, user_type
ORDER BY
  year ASC;




/*____________________________________________________________________________________________*/
/* Most popular hours to trip */
/* MEMBERS */
SELECT
  RANK() OVER (ORDER BY quantity DESC) as rank,
  quantity,
  user_type,
  hour
FROM
  (
  SELECT 
    COUNT(*) as quantity,
    user_type,
    hour
  FROM
    (
    SELECT
      user_type,
      hour
    FROM
      (
      SELECT
      user_type,
      CAST(EXTRACT(HOUR from start_time) as INT64) as hour
      FROM
      `Cyclistic.cyclistic_trips_2013`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2014`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2015`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2016`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2017`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2018`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2019`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2020`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2021`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2022`
    )
      )
      GROUP BY hour, user_type )
WHERE
  user_type = 'member'
GROUP BY
  hour, user_type, quantity
ORDER BY
  rank ASC;


/* CASUAL */
SELECT
  RANK() OVER (ORDER BY quantity DESC) as rank,
  quantity,
  user_type,
  hour
FROM
  (
  SELECT 
    COUNT(*) as quantity,
    user_type,
    hour
  FROM
    (
    SELECT
      user_type,
      hour
    FROM
      (
      SELECT
      user_type,
      CAST(EXTRACT(HOUR from start_time) as INT64) as hour
      FROM
      `Cyclistic.cyclistic_trips_2013`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2014`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2015`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2016`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2017`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2018`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2019`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2020`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2021`

      UNION ALL

      SELECT
        user_type,
        CAST(EXTRACT(HOUR from start_time) as INT64) as hour
        FROM
        `Cyclistic.cyclistic_trips_2022`
    )
      )
      GROUP BY hour, user_type )
WHERE
  user_type = 'casual'
GROUP BY
  hour, user_type, quantity
ORDER BY
  rank ASC;



/*____________________________________________________________________________________________*/
/* Counting total trips by user type */
SELECT 
  COUNT(*) as total_trips,
  year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_and_stations`
WHERE 
  user_type = 'member'
GROUP BY 
  year, user_type
  
UNION ALL

SELECT 
  COUNT(*) as total_trips,
  year,
  user_type
FROM 
  `Cyclistic.cyclistic_trips_and_stations`
WHERE 
  user_type = 'casual'
GROUP BY 
  year, user_type

ORDER BY
  year ASC;


/* Reminders */
/* Export data to multiple files in Google Cloud Bucket */
/* Downloaded files to PC */
EXPORT DATA OPTIONS(
  uri='gs://cyclistic/trips_stations_joined-*.csv',
  format='CSV',
  overwrite=true,
  header=true,
  field_delimiter=',') AS
SELECT 
  * 
FROM 
  `Cyclistic.cyclistic_trips_and_stations`;


/* How to merge .csv in PC */
> cmd 
> cd "folder/path"
> copy *.csv combined-csv-files.csv
 

/* part of Google Capstone Project - https://github.com/Rhappy/Cyclistic */