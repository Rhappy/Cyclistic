/*  General cleaning methods used for each table

/*____________________________________________________________*/
/* cyclistic_trips_2013 */
/* Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  CAST(birth_year as INTEGER) as birth_year,
  CAST(bike_id as STRING) as bike_id,
  trip_duration
FROM
  `Cyclistic.cyclistic_trips_2013`;

/*  Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2013;

SELECT
  COUNT(*) as total,
  user_type
FROM
  Cyclistic.cyclistic_trips_2013
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  LOWER(gender) as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2013`;


/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2013` as a 
  INNER JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20001'
WHERE
  start_station_name = 'State St & Erie St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20001'
WHERE
  end_station_name = 'State St & Erie St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20003'
WHERE
  start_station_name = 'Wood St & North Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20003'
WHERE
  end_station_name = 'Wood St & North Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20004'
WHERE
  start_station_name = 'Paulina St & Diversey Pkwy';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20004'
WHERE
  end_station_name = 'Paulina St & Diversey Pkwy';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20005'
WHERE
  start_station_name = 'Clark St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20005'
WHERE
  end_station_name = 'Clark St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20007'
WHERE
  start_station_name = 'State St & Wacker Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20007'
WHERE
  end_station_name = 'State St & Wacker Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20008'
WHERE
  start_station_name = 'Cityfront Plaza & N Water St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20008'
WHERE
  end_station_name = 'Cityfront Plaza & N Water St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20009'
WHERE
  start_station_name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20009'
WHERE
  end_station_name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20011'
WHERE
  start_station_name = 'Wells St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20011'
WHERE
  end_station_name = 'Wells St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20014'
WHERE
  start_station_name = 'Pine Grove Ave & Addison St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20014'
WHERE
  end_station_name = 'Pine Grove Ave & Addison St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20018'
WHERE
  start_station_name = 'Halsted St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20018'
WHERE
  end_station_name = 'Halsted St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20019'
WHERE
  start_station_name = 'Lincoln Ave & Eastwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20019'
WHERE
  end_station_name = 'Lincoln Ave & Eastwood Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20020'
WHERE
  start_station_name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20020'
WHERE
  end_station_name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20022'
WHERE
  start_station_name = 'Wolcott Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20022'
WHERE
  end_station_name = 'Wolcott Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20023'
WHERE
  start_station_name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20023'
WHERE
  end_station_name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20038'
WHERE
  start_station_name = 'Ashland Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20038'
WHERE
  end_station_name = 'Ashland Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20040'
WHERE
  start_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20040'
WHERE
  end_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20040'
WHERE
  start_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20040'
WHERE
  end_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20043'
WHERE
  start_station_name = 'Green St & Milwaukee Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20043'
WHERE
  end_station_name = 'Green St & Milwaukee Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20045'
WHERE
  start_station_name = 'Lincoln Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20045'
WHERE
  end_station_name = 'Lincoln Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_id = '20046'
WHERE
  start_station_name = 'Franklin St & Arcade Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_id = '20046'
WHERE
  end_station_name = 'Franklin St & Arcade Pl';

SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2013` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = '900 W Harrison St'
WHERE
  start_station_id = '109';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = '900 W Harrison St'
WHERE  
  end_station_id = '109';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = 'Ogden Ave & Congress Pkwy'
WHERE
  start_station_id = '122';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = 'Ogden Ave & Congress Pkwy'
WHERE  
  end_station_id = '122';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = 'MLK Jr Dr & 47th St'
WHERE
  start_station_id = '200';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = 'MLK Jr Dr & 47th St'
WHERE  
  end_station_id = '200';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = 'St. Clair St & Erie St'
WHERE
  start_station_id = '211';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = 'St. Clair St & Erie St'
WHERE  
  end_station_id = '211';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = 'Damen Ave & Cortland St'
WHERE
  start_station_id = '219';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = 'Damen Ave & Cortland St'
WHERE  
  end_station_id = '219';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = 'Shore Dr & 55th St'
WHERE
  start_station_id = '247';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = 'Shore Dr & 55th St'
WHERE  
  end_station_id = '247';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  start_station_name = 'Wallace St & 35th St'
WHERE
  start_station_id = '278';

UPDATE
  `Cyclistic.cyclistic_trips_2013`
SET
  end_station_name = 'Wallace St & 35th St'
WHERE  
  end_station_id = '278';



/*____________________________________________________________*/
/* cyclistic_trips_2014 */
/* Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  birth_year,
  CAST(bike_id as STRING) as bike_id,
  trip_duration
FROM
  `Cyclistic.cyclistic_trips_2014`;

/*  Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2014;

SELECT
  COUNT(*) as total,
  user_type
FROM
  `Cyclistic.cyclistic_trips_2014`
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  LOWER(gender) as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2014`;


/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2014` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20001'
WHERE
  start_station_name = 'State St & Erie St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20001'
WHERE
  end_station_name = 'State St & Erie St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20002'
WHERE
  start_station_name = 'Racine Ave & 19th St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20002'
WHERE
  end_station_name = 'Racine Ave & 19th St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20003'
WHERE
  start_station_name = 'Wood St & North Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20003'
WHERE
  end_station_name = 'Wood St & North Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20004'
WHERE
  start_station_name = 'Paulina St & Diversey Pkwy';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20004'
WHERE
  end_station_name = 'Paulina St & Diversey Pkwy';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20005'
WHERE
  start_station_name = 'Clark St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20005'
WHERE
  end_station_name = 'Clark St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20007'
WHERE
  start_station_name = 'State St & Wacker Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20007'
WHERE
  end_station_name = 'State St & Wacker Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20008'
WHERE
  start_station_name = 'Cityfront Plaza & N Water St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20008'
WHERE
  end_station_name = 'Cityfront Plaza & N Water St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20009'
WHERE
  start_station_name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20009'
WHERE
  end_station_name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20011'
WHERE
  start_station_name = 'Wells St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20011'
WHERE
  end_station_name = 'Wells St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20014'
WHERE
  start_station_name = 'Pine Grove Ave & Addison St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20014'
WHERE
  end_station_name = 'Pine Grove Ave & Addison St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20018'
WHERE
  start_station_name = 'Halsted St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20018'
WHERE
  end_station_name = 'Halsted St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20019'
WHERE
  start_station_name = 'Lincoln Ave & Eastwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20019'
WHERE
  end_station_name = 'Lincoln Ave & Eastwood Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20020'
WHERE
  start_station_name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20020'
WHERE
  end_station_name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20022'
WHERE
  start_station_name = 'Wolcott Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20022'
WHERE
  end_station_name = 'Wolcott Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20023'
WHERE
  start_station_name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20023'
WHERE
  end_station_name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20038'
WHERE
  start_station_name = 'Ashland Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20038'
WHERE
  end_station_name = 'Ashland Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20040'
WHERE
  start_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20040'
WHERE
  end_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20040'
WHERE
  start_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20040'
WHERE
  end_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20043'
WHERE
  start_station_name = 'Green St & Milwaukee Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20043'
WHERE
  end_station_name = 'Green St & Milwaukee Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20045'
WHERE
  start_station_name = 'Lincoln Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20045'
WHERE
  end_station_name = 'Lincoln Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_id = '20046'
WHERE
  start_station_name = 'Franklin St & Arcade Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_id = '20046'
WHERE
  end_station_name = 'Franklin St & Arcade Pl';



SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2014` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = '900 W Harrison St'
WHERE
  start_station_id = '109';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = '900 W Harrison St'
WHERE  
  end_station_id = '109';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'Ogden Ave & Congress Pkwy'
WHERE
  start_station_id = '122';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'Ogden Ave & Congress Pkwy'
WHERE  
  end_station_id = '122';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE
  start_station_id = '179';
UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE  
  end_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'MLK Jr Dr & 47th St'
WHERE
  start_station_id = '200';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'MLK Jr Dr & 47th St'
WHERE  
  end_station_id = '200';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'St. Clair St & Erie St'
WHERE
  start_station_id = '211';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'St. Clair St & Erie St'
WHERE  
  end_station_id = '211';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'Damen Ave & Cortland St'
WHERE
  start_station_id = '219';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'Damen Ave & Cortland St'
WHERE  
  end_station_id = '219';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'Shore Dr & 55th St'
WHERE
  start_station_id = '247';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'Shore Dr & 55th St'
WHERE  
  end_station_id = '247';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  start_station_name = 'Wallace St & 35th St'
WHERE
  start_station_id = '278';

UPDATE
  `Cyclistic.cyclistic_trips_2014`
SET
  end_station_name = 'Wallace St & 35th St'
WHERE  
  end_station_id = '278';



/*____________________________________________________________*/
/* cyclistic_trips_2015 */
/* Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  birth_year,
  CAST(bike_id as STRING) as bike_id,
  trip_duration
FROM
  `Cyclistic.cyclistic_trips_2015`;

/*  Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2015;

SELECT
  COUNT(*) as total,
  user_type
FROM
  `Cyclistic.cyclistic_trips_2015`
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  LOWER(gender) as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2015`;



/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2015` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20002'
WHERE
  end_station_name = 'Racine Ave & 19th St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20003'
WHERE
  start_station_name = 'Wood St & North Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20009'
WHERE
  start_station_name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20009'
WHERE
  end_station_name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20010'
WHERE
  end_station_name = 'Michigan Ave & Balbo Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20010'
WHERE
  start_station_name = 'Michigan Ave & Balbo Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20015'
WHERE
  start_station_name = 'Michigan Ave & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20015'
WHERE
  end_station_name = 'Michigan Ave & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20020'
WHERE
  start_station_name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20020'
WHERE
  end_station_name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20023'
WHERE
  start_station_name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20023'
WHERE
  end_station_name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20024'
WHERE
  start_station_name = 'California Ave & Augusta Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20024'
WHERE
  end_station_name = 'California Ave & Augusta Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20025'
WHERE
  start_station_name = 'Princeton Ave & 31st St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20025'
WHERE
  end_station_name = 'Princeton Ave & 31st St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20027'
WHERE
  start_station_name = 'Princeton Ave & China Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20027'
WHERE
  end_station_name = 'Princeton Ave & China Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20028'
WHERE
  start_station_name = 'Kedzie Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20028'
WHERE
  end_station_name = 'Kedzie Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20029'
WHERE
  start_station_name = 'Keeler Ave & Irving Park Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20029'
WHERE
  end_station_name = 'Keeler Ave & Irving Park Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20040'
WHERE
  start_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20040'
WHERE
  end_station_name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20046'
WHERE
  start_station_name = 'Franklin St & Arcade Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20046'
WHERE
  end_station_name = 'Franklin St & Arcade Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';


SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2015` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Paulina Ave & North Ave'
WHERE
  start_station_id = '16';
UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Paulina Ave & North Ave'
WHERE  
  end_station_id = '16';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Wabash Ave & 16th St'
WHERE
  start_station_id = '72';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Wabash Ave & 16th St'
WHERE  
  end_station_id = '72';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Aberdeen St & Madison St'
WHERE
  start_station_id = '80';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Aberdeen St & Madison St'
WHERE  
  end_station_id = '80';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE
  start_station_id = '179';
UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE  
  end_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Green St & Madison St'
WHERE
  start_station_id = '198';
UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Green St & Madison St'
WHERE  
  end_station_id = '198';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Shore Dr & 55th St'
WHERE
  start_station_id = '247';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Shore Dr & 55th St'
WHERE  
  end_station_id = '247';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Wells St & Concord Ln'
WHERE
  start_station_id = '289';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Wells St & Concord Ln'
WHERE  
  end_station_id = '289';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Cornell Ave & Hyde Park Blvd'
WHERE
  start_station_id = '417';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Cornell Ave & Hyde Park Blvd'
WHERE  
  end_station_id = '417';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Fairfield Ave & Roosevelt Rd'
WHERE
  start_station_id = '436';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Fairfield Ave & Roosevelt Rd'
WHERE  
  end_station_id = '436';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  start_station_name = 'Pulaski Rd & Eddy St'
WHERE
  start_station_id = '488';

UPDATE
  `Cyclistic.cyclistic_trips_2015`
SET
  end_station_name = 'Pulaski Rd & Eddy St'
WHERE  
  end_station_id = '488';





/*____________________________________________________________*/
/* cyclistic_trips_2016 */
/* Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  birth_year,
  CAST(bike_id as STRING) as bike_id,
  trip_duration
FROM
  `Cyclistic.cyclistic_trips_2016`;

/*  Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2016;

SELECT
  COUNT(*) as total,
  user_type
FROM
  `Cyclistic.cyclistic_trips_2016`
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  CASE 
    WHEN gender = 'Male' THEN 'male'
    WHEN gender = 'Female' THEN 'female'
    ELSE NULL
  END as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2016`;


/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2016` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20010'
WHERE
  end_station_name = 'Michigan Ave & Balbo Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20010'
WHERE
  start_station_name = 'Michigan Ave & Balbo Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20012'
WHERE
  start_station_name = 'Orleans St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20012'
WHERE
  end_station_name = 'Orleans St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20016'
WHERE
  start_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20016'
WHERE
  end_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20028'
WHERE
  start_station_name = 'Kedzie Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20028'
WHERE
  end_station_name = 'Kedzie Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20029'
WHERE
  start_station_name = 'Keeler Ave & Irving Park Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20029'
WHERE
  end_station_name = 'Keeler Ave & Irving Park Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20037'
WHERE
  start_station_name = 'Chappel Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20037'
WHERE
  end_station_name = 'Chappel Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20041'
WHERE
  start_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20041'
WHERE
  end_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';



SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2016` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Loomis St & Taylor St'
WHERE
  start_station_id = '19';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Loomis St & Taylor St'
WHERE  
  end_station_id = '19';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Orleans St & Elm St'
WHERE
  start_station_id = '23';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Orleans St & Elm St'
WHERE  
  end_station_id = '23';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Canal St & Jackson Blvd'
WHERE
  start_station_id = '75';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Canal St & Jackson Blvd'
WHERE  
  end_station_id = '75';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Museum Campus'
WHERE
  start_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Museum Campus'
WHERE  
  end_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Clinton St & Polk St'
WHERE
  start_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Clinton St & Polk St'
WHERE  
  end_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE
  start_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE  
  end_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Canal St & Monroe St'
WHERE
  start_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Canal St & Monroe St'
WHERE  
  end_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Sangamon St & Washington Blvd'
WHERE
  start_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Sangamon St & Washington Blvd'
WHERE  
  end_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE
  start_station_id = '238';
  
UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE  
  end_station_id = '238';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Halsted St & 35th St'
WHERE
  start_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Halsted St & 35th St'
WHERE  
  end_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Halsted St & Blackhawk St'
WHERE
  start_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Halsted St & Blackhawk St'
WHERE  
  end_station_id = '331';


UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'MLK Jr Dr & 56th St'
WHERE
  start_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'MLK Jr Dr & 56th St'
WHERE  
  end_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Washtenaw Ave & 15th St'
WHERE
  start_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Washtenaw Ave & 15th St'
WHERE  
  end_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  start_station_name = 'Albany Ave & Montrose Ave'
WHERE
  start_station_id = '480';

UPDATE
  `Cyclistic.cyclistic_trips_2016`
SET
  end_station_name = 'Albany Ave & Montrose Ave'
WHERE  
  end_station_id = '480';





/*____________________________________________________________*/
/* cyclistic_trips_2017 */
/* Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  birth_year,
  CAST(bike_id as STRING) as bike_id,
  trip_duration
FROM
  `Cyclistic.cyclistic_trips_2017`;

/* Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2017;

SELECT
  COUNT(*) as total,
  user_type
FROM
  `Cyclistic.cyclistic_trips_2017`
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  CASE 
    WHEN gender = 'Male' THEN 'male'
    WHEN gender = 'Female' THEN 'female'
    ELSE NULL
  END as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2017`;


/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2017` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Wood St & Division St'
WHERE
  start_station_id = '17';
UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Wood St & Division St'
WHERE  
  end_station_id = '17';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Sangamon St & Washington Blvd'
WHERE
  start_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Sangamon St & Washington Blvd'
WHERE  
  end_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Dearborn St & Van Buren St'
WHERE
  start_station_id = '624';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Dearborn St & Van Buren St'
WHERE  
  end_station_id = '624';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20006'
WHERE
  start_station_name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20006'
WHERE
  end_station_name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20012'
WHERE
  start_station_name = 'Orleans St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20012'
WHERE
  end_station_name = 'Orleans St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20013'
WHERE
  start_station_name = 'Racine Ave (May St) & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20013'
WHERE
  end_station_name = 'Racine Ave (May St) & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20016'
WHERE
  start_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20016'
WHERE
  end_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20021'
WHERE
  start_station_name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20021'
WHERE
  end_station_name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20026'
WHERE
  start_station_name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20026'
WHERE
  end_station_name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20030'
WHERE
  start_station_name = 'Oakley Ave & Roscoe St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20030'
WHERE
  end_station_name = 'Oakley Ave & Roscoe St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20032'
WHERE
  start_station_name = 'LaSalle (Wells) St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20032'
WHERE
  end_station_name = 'LaSalle (Wells) St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20033'
WHERE
  start_station_name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20033'
WHERE
  end_station_name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20034'
WHERE
  start_station_name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20034'
WHERE
  end_station_name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20035'
WHERE
  start_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20035'
WHERE
  end_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20036'
WHERE
  start_station_name = 'Eberhart (Vernon) Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20036'
WHERE
  end_station_name = 'Eberhart (Vernon) Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20041'
WHERE
  start_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20041'
WHERE
  end_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20042'
WHERE
  start_station_name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20042'
WHERE
  end_station_name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20044'
WHERE
  start_station_name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20044'
WHERE
  end_station_name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';


SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2017` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_id = '17'
WHERE
  start_station_name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_id = '17'
WHERE
  end_station_name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Loomis St & Taylor St'
WHERE
  start_station_id = '19';
UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Loomis St & Taylor St'
WHERE  
  end_station_id = '19';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Orleans St & Elm St'
WHERE
  start_station_id = '23';
UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Orleans St & Elm St'
WHERE  
  end_station_id = '23';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Canal St & Jackson Blvd'
WHERE
  start_station_id = '75';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Canal St & Jackson Blvd'
WHERE  
  end_station_id = '75';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Museum Campus'
WHERE
  start_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Museum Campus'
WHERE  
  end_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Clinton St & Polk St'
WHERE
  start_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Clinton St & Polk St'
WHERE  
  end_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE
  start_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE  
  end_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Canal St & Monroe St'
WHERE
  start_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Canal St & Monroe St'
WHERE  
  end_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE
  start_station_id = '238';
  
UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE  
  end_station_id = '238';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Halsted St & 35th St'
WHERE
  start_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Halsted St & 35th St'
WHERE  
  end_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Halsted St & Blackhawk St'
WHERE
  start_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Halsted St & Blackhawk St'
WHERE  
  end_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'MLK Jr Dr & 56th St'
WHERE
  start_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'MLK Jr Dr & 56th St'
WHERE  
  end_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Washtenaw Ave & 15th St'
WHERE
  start_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Washtenaw Ave & 15th St'
WHERE  
  end_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  start_station_name = 'Albany Ave & Montrose Ave'
WHERE
  start_station_id = '480';

UPDATE
  `Cyclistic.cyclistic_trips_2017`
SET
  end_station_name = 'Albany Ave & Montrose Ave'
WHERE  
  end_station_id = '480';


/*____________________________________________________________*/
/* cyclistic_trips_2018 */
/* Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  birth_year,
  CAST(bike_id as STRING) as bike_id,
  CAST(trip_duration as INTEGER) as trip_duration
FROM
  `Cyclistic.cyclistic_trips_2018`;

/* Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2018;

SELECT
  COUNT(*) as total,
  user_type
FROM
  `Cyclistic.cyclistic_trips_2018`
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  LOWER(gender) as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2018`;



/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2018` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '674'
WHERE
  start_station_name = 'Michigan Ave & 71st St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '674'
WHERE
  end_station_name = 'Michigan Ave & 71st St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20006'
WHERE
  start_station_name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20006'
WHERE
  end_station_name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20013'
WHERE
  start_station_name = 'Racine Ave (May St) & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20013'
WHERE
  end_station_name = 'Racine Ave (May St) & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20016'
WHERE
  start_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20016'
WHERE
  end_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20021'
WHERE
  start_station_name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20021'
WHERE
  end_station_name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20026'
WHERE
  start_station_name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20026'
WHERE
  end_station_name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20033'
WHERE
  start_station_name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20033'
WHERE
  end_station_name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20034'
WHERE
  start_station_name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20034'
WHERE
  end_station_name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20035'
WHERE
  start_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20035'
WHERE
  end_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20036'
WHERE
  start_station_name = 'Eberhart (Vernon) Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20036'
WHERE
  end_station_name = 'Eberhart (Vernon) Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20039'
WHERE
  start_station_name = 'Phillips Ave & 83rd St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20039'
WHERE
  end_station_name = 'Phillips Ave & 83rd St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20041'
WHERE
  start_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20041'
WHERE
  end_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20042'
WHERE
  start_station_name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20042'
WHERE
  end_station_name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20044'
WHERE
  start_station_name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20044'
WHERE
  end_station_name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20047'
WHERE
  start_station_name = 'Throop (Loomis) St & Taylor St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20047'
WHERE
  end_station_name = 'Throop (Loomis) St & Taylor St';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';



SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2018` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;


UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Loomis St & Taylor St'
WHERE
  start_station_id = '19';
UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Loomis St & Taylor St'
WHERE  
  end_station_id = '19';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Orleans St & Elm St'
WHERE
  start_station_id = '23';
UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Orleans St & Elm St'
WHERE  
  end_station_id = '23';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Financial Pl & Congress Pkwy'
WHERE
  start_station_id = '89';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Financial Pl & Congress Pkwy'
WHERE  
  end_station_id = '89';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Museum Campus'
WHERE
  start_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Museum Campus'
WHERE  
  end_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Clinton St & Polk St'
WHERE
  start_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Clinton St & Polk St'
WHERE  
  end_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Ashland Ave & Lake St'
WHERE
  start_station_id = '119';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Ashland Ave & Lake St'
WHERE  
  end_station_id = '119';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Wentworth Ave & Archer Ave'
WHERE
  start_station_id = '120';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Wentworth Ave & Archer Ave'
WHERE  
  end_station_id = '120';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE
  start_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE  
  end_station_id = '179';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Damen Ave & Augusta Blvd'
WHERE
  start_station_id = '183';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Damen Ave & Augusta Blvd'
WHERE  
  end_station_id = '183';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Canal St & Monroe St'
WHERE
  start_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Canal St & Monroe St'
WHERE  
  end_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Hampden Ct & Diversey Pkwy'
WHERE
  start_station_id = '220';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Hampden Ct & Diversey Pkwy'
WHERE  
  end_station_id = '220';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Sangamon St & Washington Blvd'
WHERE
  start_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Sangamon St & Washington Blvd'
WHERE  
  end_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE
  start_station_id = '238';
  
UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE  
  end_station_id = '238';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Lincoln Ave & Leavitt St'
WHERE
  start_station_id = '243';
  
UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Lincoln Ave & Leavitt St'
WHERE  
  end_station_id = '243';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Clifton Ave & Lawrence Ave'
WHERE
  start_station_id = '253';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Clifton Ave & Lawrence Ave'
WHERE  
  end_station_id = '253';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Halsted St & 35th St'
WHERE
  start_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Halsted St & 35th St'
WHERE  
  end_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Clark St & Winnemac Ave'
WHERE
  start_station_id = '325';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Clark St & Winnemac Ave'
WHERE  
  end_station_id = '325';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Halsted St & Blackhawk St'
WHERE
  start_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Halsted St & Blackhawk St'
WHERE  
  end_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Halsted St & Diversey Pkwy'
WHERE
  start_station_id = '332';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Halsted St & Diversey Pkwy'
WHERE  
  end_station_id = '332';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'MLK Jr Dr & 56th St'
WHERE
  start_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'MLK Jr Dr & 56th St'
WHERE  
  end_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Washtenaw Ave & 15th St'
WHERE
  start_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Washtenaw Ave & 15th St'
WHERE  
  end_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Lawndale Ave & 23rd St'
WHERE
  start_station_id = '440';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Lawndale Ave & 23rd St'
WHERE  
  end_station_id = '440';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Ravenswood Ave & Balmoral Ave'
WHERE
  start_station_id = '462';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Ravenswood Ave & Balmoral Ave'
WHERE  
  end_station_id = '462';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Pulaski Rd & Eddy St'
WHERE
  start_station_id = '488';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Pulaski Rd & Eddy St'
WHERE  
  end_station_id = '488';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Pulaski Rd & Madison St'
WHERE
  start_station_id = '534';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Pulaski Rd & Madison St'
WHERE  
  end_station_id = '534';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Wisconsin Ave & Madison St'
WHERE
  start_station_id = '613';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Wisconsin Ave & Madison St'
WHERE  
  end_station_id = '613';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Dearborn St & Van Buren St'
WHERE
  start_station_id = '624';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Dearborn St & Van Buren St'
WHERE  
  end_station_id = '624';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'LaSalle Dr & Huron St'
WHERE
  start_station_id = '627';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'LaSalle Dr & Huron St'
WHERE  
  end_station_id = '627';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Malcolm X College Vaccination Site'
WHERE
  start_station_id = '631';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Malcolm X College Vaccination Site'
WHERE  
  end_station_id = '631';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Fairbanks St & Superior St'
WHERE
  start_station_id = '635';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Fairbanks St & Superior St'
WHERE  
  end_station_id = '635';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Orleans St & Hubbard St'
WHERE
  start_station_id = '636';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Orleans St & Hubbard St'
WHERE  
  end_station_id = '636';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Wood St & Chicago Ave'
WHERE
  start_station_id = '637';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Wood St & Chicago Ave'
WHERE  
  end_station_id = '637';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Clinton St & Jackson Blvd'
WHERE
  start_station_id = '638';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Clinton St & Jackson Blvd'
WHERE  
  end_station_id = '638';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Smith Park'
WHERE
  start_station_id = '643';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Smith Park'
WHERE  
  end_station_id = '643';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Western Ave & Fillmore St'
WHERE
  start_station_id = '644';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Western Ave & Fillmore St'
WHERE  
  end_station_id = '644';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Stewart Ave & 63rd St'
WHERE
  start_station_id = '649';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Stewart Ave & 63rd St'
WHERE  
  end_station_id = '649';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Eggleston Ave & 69th St'
WHERE
  start_station_id = '650';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Eggleston Ave & 69th St'
WHERE  
  end_station_id = '650';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Racine Ave & Washington Blvd'
WHERE
  start_station_id = '654';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Racine Ave & Washington Blvd'
WHERE  
  end_station_id = '654';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Damen Ave & Walnut (Lake) St'
WHERE
  start_station_id = '656';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Damen Ave & Walnut (Lake) St'
WHERE  
  end_station_id = '656';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Leavitt St & Division St'
WHERE
  start_station_id = '658';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Leavitt St & Division St'
WHERE  
  end_station_id = '658';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  start_station_name = 'Leavitt St & Belmont Ave'
WHERE
  start_station_id = '664';

UPDATE
  `Cyclistic.cyclistic_trips_2018`
SET
  end_station_name = 'Leavitt St & Belmont Ave'
WHERE  
  end_station_id = '664';



/*____________________________________________________________*/
/*  cyclistic_trips_2019 */
/*  Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  gender,
  birth_year,
  CAST(bike_id as STRING) as bike_id,
  CAST(trip_duration as INTEGER) as trip_duration
FROM
  `Cyclistic.cyclistic_trips_2019`;

/*  Making terms uniform for analyses */
SELECT
  DISTINCT(gender) as gender
FROM
  Cyclistic.cyclistic_trips_2019;

SELECT
  COUNT(*) as total,
  user_type
FROM
  `Cyclistic.cyclistic_trips_2019`
GROUP BY
  user_type;

SELECT
  trip_id,
  start_time,
  end_time,
  bike_id,
  trip_duration,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  CASE 
    WHEN user_type = 'Subscriber' THEN 'member'
    WHEN user_type = 'Customer' THEN 'casual'
    ELSE NULL
  END as user_type,
  LOWER(gender) as gender,
  birth_year
FROM
  `Cyclistic.cyclistic_trips_2019`;


/*  Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */

SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2019` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '674'
WHERE
  start_station_name = 'Michigan Ave & 71st St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '674'
WHERE
  end_station_name = 'Michigan Ave & 71st St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20013'
WHERE
  start_station_name = 'Racine Ave (May St) & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20013'
WHERE
  end_station_name = 'Racine Ave (May St) & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20016'
WHERE
  start_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20016'
WHERE
  end_station_name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20021'
WHERE
  start_station_name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20021'
WHERE
  end_station_name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20026'
WHERE
  start_station_name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20026'
WHERE
  end_station_name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20033'
WHERE
  start_station_name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20033'
WHERE
  end_station_name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20034'
WHERE
  start_station_name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20034'
WHERE
  end_station_name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20035'
WHERE
  start_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20035'
WHERE
  end_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20039'
WHERE
  start_station_name = 'Phillips Ave & 83rd St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20039'
WHERE
  end_station_name = 'Phillips Ave & 83rd St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20041'
WHERE
  start_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20041'
WHERE
  end_station_name = 'Aberdeen St & Monroe St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20042'
WHERE
  start_station_name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20042'
WHERE
  end_station_name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20044'
WHERE
  start_station_name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20044'
WHERE
  end_station_name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20049'
WHERE
  start_station_name = 'Michigan Ave & Ida B Wells Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20049'
WHERE
  end_station_name = 'Michigan Ave & Ida B Wells Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20050'
WHERE
  start_station_name = 'Clark St & Ida B Wells Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20050'
WHERE
  end_station_name = 'Clark St & Ida B Wells Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20055'
WHERE
  start_station_name = 'Financial Pl & Ida B Wells Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20055'
WHERE
  end_station_name = 'Financial Pl & Ida B Wells Dr';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20061'
WHERE
  start_station_name = 'MLK Jr Dr & Pershing Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20061'
WHERE
  end_station_name = 'MLK Jr Dr & Pershing Rd';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20062'
WHERE
  start_station_name = 'Damen Ave & Thomas St (Augusta Blvd)';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20062'
WHERE
  end_station_name = 'Damen Ave & Thomas St (Augusta Blvd)';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20064'
WHERE
  start_station_name = 'Elizabeth (May) St & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20064'
WHERE
  end_station_name = 'Elizabeth (May) St & Fulton St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20065'
WHERE
  start_station_name = 'Clark St & Drummond Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20065'
WHERE
  end_station_name = 'Clark St & Drummond Pl';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20067'
WHERE
  start_station_name = 'Wolcott (Ravenswood) Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20067'
WHERE
  end_station_name = 'Wolcott (Ravenswood) Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20068'
WHERE
  start_station_name = 'Lincoln Ave & Sunnyside Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20068'
WHERE
  end_station_name = 'Lincoln Ave & Sunnyside Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20069'
WHERE
  start_station_name = 'Winthrop Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20069'
WHERE
  end_station_name = 'Winthrop Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20072'
WHERE
  start_station_name = 'Halsted St & Clybourn Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20072'
WHERE
  end_station_name = 'Halsted St & Clybourn Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20075'
WHERE
  start_station_name = 'Paulina St & Flournoy St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20075'
WHERE
  end_station_name = 'Paulina St & Flournoy St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20076'
WHERE
  start_station_name = 'Washtenaw Ave & Ogden Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20076'
WHERE
  end_station_name = 'Washtenaw Ave & Ogden Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20077'
WHERE
  start_station_name = 'Central Park Ave & 24th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20077'
WHERE
  end_station_name = 'Central Park Ave & 24th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20078'
WHERE
  start_station_name = 'Winchester (Ravenswood) Ave & Balmoral Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20078'
WHERE
  end_station_name = 'Winchester (Ravenswood) Ave & Balmoral Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20080'
WHERE
  start_station_name = 'Karlov Ave & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20080'
WHERE
  end_station_name = 'Karlov Ave & Madison St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_id = '20082'
WHERE
  start_station_name = 'Vincennes Ave & 75th St';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_id = '20082'
WHERE
  end_station_name = 'Vincennes Ave & 75th St';


SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  Cyclistic_.cyclistic_trips_2019 as a 
  FULL JOIN Cyclistic_.cyclistic_stations as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;


UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Buckingham Fountain'
WHERE
  start_station_id = '2';
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Buckingham Fountain'
WHERE  
  end_station_id = '2';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Wood St & Division St'
WHERE
  start_station_id = '17';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Wood St & Division St'
WHERE  
  end_station_id = '17';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Loomis St & Taylor St'
WHERE
  start_station_id = '19';
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Loomis St & Taylor St'
WHERE  
  end_station_id = '19';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Orleans St & Elm St'
WHERE
  start_station_id = '23';
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Orleans St & Elm St'
WHERE  
  end_station_id = '23';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Franklin St & Chicago Ave'
WHERE
  start_station_id = '31';
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Franklin St & Chicago Ave'
WHERE  
  end_station_id = '31';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Financial Pl & Congress Pkwy'
WHERE
  start_station_id = '89';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Financial Pl & Congress Pkwy'
WHERE  
  end_station_id = '89';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Museum Campus'
WHERE
  start_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Museum Campus'
WHERE  
  end_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Clinton St & Polk St'
WHERE
  start_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Clinton St & Polk St'
WHERE  
  end_station_id = '103';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Ashland Ave & Lake St'
WHERE
  start_station_id = '119';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Ashland Ave & Lake St'
WHERE  
  end_station_id = '119';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Wentworth Ave & Archer Ave'
WHERE
  start_station_id = '120';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Wentworth Ave & Archer Ave'
WHERE  
  end_station_id = '120';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Wentworth Ave & 24th St'
WHERE
  start_station_id = '132';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Wentworth Ave & 24th St'
WHERE  
  end_station_id = '132';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Canal St & Monroe St'
WHERE
  start_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Canal St & Monroe St'
WHERE  
  end_station_id = '191';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Sangamon St & Washington Blvd'
WHERE
  start_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Sangamon St & Washington Blvd'
WHERE  
  end_station_id = '233';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE
  start_station_id = '238';
  
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Ravenswood Ave & Montrose Ave'
WHERE  
  end_station_id = '238';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'California Ave & Francis Pl'
WHERE
  start_station_id = '259';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'California Ave & Francis Pl'
WHERE  
  end_station_id = '259';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Halsted St & 35th St'
WHERE
  start_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Halsted St & 35th St'
WHERE  
  end_station_id = '279';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Franklin St & Quincy St'
WHERE
  start_station_id = '286';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Franklin St & Quincy St'
WHERE  
  end_station_id = '286';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Halsted St & Blackhawk St'
WHERE
  start_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Halsted St & Blackhawk St'
WHERE  
  end_station_id = '331';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Halsted St & Diversey Pkwy'
WHERE
  start_station_id = '332';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Halsted St & Diversey Pkwy'
WHERE  
  end_station_id = '332';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'MLK Jr Dr & 56th St'
WHERE
  start_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'MLK Jr Dr & 56th St'
WHERE  
  end_station_id = '421';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Washtenaw Ave & 15th St'
WHERE
  start_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Washtenaw Ave & 15th St'
WHERE  
  end_station_id = '437';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Pulaski Rd & Eddy St'
WHERE
  start_station_id = '488';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Pulaski Rd & Eddy St'
WHERE  
  end_station_id = '488';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Dearborn St & Van Buren St'
WHERE
  start_station_id = '624';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Dearborn St & Van Buren St'
WHERE  
  end_station_id = '624';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'LaSalle Dr & Huron St'
WHERE
  start_station_id = '627';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'LaSalle Dr & Huron St'
WHERE  
  end_station_id = '627';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Malcolm X College Vaccination Site'
WHERE
  start_station_id = '631';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Malcolm X College Vaccination Site'
WHERE  
  end_station_id = '631';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Fairbanks St & Superior St'
WHERE
  start_station_id = '635';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Fairbanks St & Superior St'
WHERE  
  end_station_id = '635';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Orleans St & Hubbard St'
WHERE
  start_station_id = '636';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Orleans St & Hubbard St'
WHERE  
  end_station_id = '636';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Wood St & Chicago Ave'
WHERE
  start_station_id = '637';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Wood St & Chicago Ave'
WHERE  
  end_station_id = '637';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Clinton St & Jackson Blvd'
WHERE
  start_station_id = '638';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Clinton St & Jackson Blvd'
WHERE  
  end_station_id = '638';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Smith Park'
WHERE
  start_station_id = '643';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Smith Park'
WHERE  
  end_station_id = '643';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Western Ave & Fillmore St'
WHERE
  start_station_id = '644';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Western Ave & Fillmore St'
WHERE  
  end_station_id = '644';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Archer (Damen) Ave & 37th St'
WHERE
  start_station_id = '645';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Archer (Damen) Ave & 37th St'
WHERE  
  end_station_id = '645';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Stewart Ave & 63rd St'
WHERE
  start_station_id = '649';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Stewart Ave & 63rd St'
WHERE  
  end_station_id = '649';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Eggleston Ave & 69th St'
WHERE
  start_station_id = '650';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Eggleston Ave & 69th St'
WHERE  
  end_station_id = '650';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Racine Ave & Washington Blvd'
WHERE
  start_station_id = '654';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Racine Ave & Washington Blvd'
WHERE  
  end_station_id = '654';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Damen Ave & Walnut (Lake) St'
WHERE
  start_station_id = '656';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Damen Ave & Walnut (Lake) St'
WHERE  
  end_station_id = '656';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Leavitt St & Division St'
WHERE
  start_station_id = '658';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Leavitt St & Division St'
WHERE  
  end_station_id = '658';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Leavitt St & Belmont Ave'
WHERE
  start_station_id = '664';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Leavitt St & Belmont Ave'
WHERE  
  end_station_id = '664';

UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  start_station_name = 'Throop St & Taylor St'
WHERE
  start_station_id = '20047';
  
UPDATE
  `Cyclistic.cyclistic_trips_2019`
SET
  end_station_name = 'Throop St & Taylor St'
WHERE  
  end_station_id = '20047';



/*____________________________________________________________*/
/*  cyclistic_trips_2020 */
/*  Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  start_lat,
  start_long,
  end_lat,
  end_long
FROM
  `Cyclistic.cyclistic_trips_2020`;


/* Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2020` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20035'
WHERE
  start_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20035'
WHERE
  end_station_name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20021'
WHERE
  start_station_name = 'Wabash Ave & 9th St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20021'
WHERE
  end_station_name = 'Wabash Ave & 9th St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20041'
WHERE
  start_station_name = 'Aberdeen St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20041'
WHERE
  end_station_name = 'Aberdeen St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20042'
WHERE
  start_station_name = 'Milwaukee Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20042'
WHERE
  end_station_name = 'Milwaukee Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20049'
WHERE
  start_station_name = 'Michigan Ave & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20049'
WHERE
  end_station_name = 'Michigan Ave & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20050'
WHERE
  start_station_name = 'Clark St & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20050'
WHERE
  end_station_name = 'Clark St & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20055'
WHERE
  start_station_name = 'Financial Pl & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20055'
WHERE
  end_station_name = 'Financial Pl & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20061'
WHERE
  start_station_name = 'MLK Jr Dr & Pershing Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20061'
WHERE
  end_station_name = 'MLK Jr Dr & Pershing Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20064'
WHERE
  start_station_name = 'Elizabeth (May) St & Fulton St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20064'
WHERE
  end_station_name = 'Elizabeth (May) St & Fulton St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20065'
WHERE
  start_station_name = 'Clark St & Drummond Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20065'
WHERE
  end_station_name = 'Clark St & Drummond Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20067'
WHERE
  start_station_name = 'Wolcott (Ravenswood) Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20067'
WHERE
  end_station_name = 'Wolcott (Ravenswood) Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20072'
WHERE
  start_station_name = 'Halsted St & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20072'
WHERE
  end_station_name = 'Halsted St & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20075'
WHERE
  start_station_name = 'Paulina St & Flournoy St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20075'
WHERE
  end_station_name = 'Paulina St & Flournoy St';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_id = '20076'
WHERE
  start_station_name = 'Washtenaw Ave & Ogden Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_id = '20076'
WHERE
  end_station_name = 'Washtenaw Ave & Ogden Ave';


SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  Cyclistic_.cyclistic_trips_2020 as a 
  FULL JOIN Cyclistic_.cyclistic_stations as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;


UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_name = 'Museum Campus'
WHERE
  start_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_name = 'Museum Campus'
WHERE  
  end_station_id = '97';

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';
  
UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  start_station_name = 'Malcolm X College Vaccination Site'
WHERE
  start_station_id = '631';

UPDATE
  `Cyclistic.cyclistic_trips_2020`
SET
  end_station_name = 'Malcolm X College Vaccination Site'
WHERE  
  end_station_id = '631';



/*____________________________________________________________*/
/*  cyclistic_trips_2021 */
/*  Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  start_lat,
  start_long,
  end_lat,
  end_long
FROM
  `Cyclistic.cyclistic_trips_2021`;

/*  Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */

SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2021` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.start_station_name = b.name
WHERE
 a.start_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '100'
WHERE
  start_station_name = 'Orleans St & Merchandise Mart Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '100'
WHERE
  end_station_name = 'Orleans St & Merchandise Mart Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '106'
WHERE
  start_station_name = 'State St & Pearson St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '106'
WHERE
  end_station_name = 'State St & Pearson St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '107'
WHERE
  start_station_name = 'Desplaines St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '107'
WHERE
  end_station_name = 'Desplaines St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '108'
WHERE
  start_station_name = 'Halsted St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '108'
WHERE
  end_station_name = 'Halsted St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '110'
WHERE
  start_station_name = 'Dearborn St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '110'
WHERE
  end_station_name = 'Dearborn St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '111'
WHERE
  start_station_name = 'Sedgwick St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '111'
WHERE
  end_station_name = 'Sedgwick St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '112'
WHERE
  start_station_name = 'Green St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '112'
WHERE
  end_station_name = 'Green St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '113'
WHERE
  start_station_name = 'Bissell St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '113'
WHERE
  end_station_name = 'Bissell St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '115'
WHERE
  start_station_name = 'Sheffield Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '115'
WHERE
  end_station_name = 'Sheffield Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '116'
WHERE
  start_station_name = 'Western Ave & Winnebago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '116'
WHERE
  end_station_name = 'Western Ave & Winnebago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '117'
WHERE
  start_station_name = 'Wilton Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '117'
WHERE
  end_station_name = 'Wilton Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '118'
WHERE
  start_station_name = 'Sedgwick St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '118'
WHERE
  end_station_name = 'Sedgwick St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '119'
WHERE
  start_station_name = 'Ashland Ave & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '119'
WHERE
  end_station_name = 'Ashland Ave & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '12'
WHERE
  start_station_name = 'South Shore Dr & 71st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '12'
WHERE
  end_station_name = 'South Shore Dr & 71st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '121'
WHERE
  start_station_name = 'Blackstone Ave & Hyde Park Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '121'
WHERE
  end_station_name = 'Blackstone Ave & Hyde Park Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '122'
WHERE
  start_station_name = 'Ogden Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '122'
WHERE
  end_station_name = 'Ogden Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '124'
WHERE
  start_station_name = 'Damen Ave & Cullerton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '124'
WHERE
  end_station_name = 'Damen Ave & Cullerton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '127'
WHERE
  start_station_name = 'Lincoln Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '127'
WHERE
  end_station_name = 'Lincoln Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '128'
WHERE
  start_station_name = 'Damen Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '128'
WHERE
  end_station_name = 'Damen Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '129'
WHERE
  start_station_name = 'Blue Island Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '129'
WHERE
  end_station_name = 'Blue Island Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '13'
WHERE
  start_station_name = 'Wilton Ave & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '13'
WHERE
  end_station_name = 'Wilton Ave & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '130'
WHERE
  start_station_name = 'Damen Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '130'
WHERE
  end_station_name = 'Damen Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '131'
WHERE
  start_station_name = 'Lincoln Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '131'
WHERE
  end_station_name = 'Lincoln Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '133'
WHERE
  start_station_name = 'Kingsbury St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '133'
WHERE
  end_station_name = 'Kingsbury St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '134'
WHERE
  start_station_name = 'Peoria St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '134'
WHERE
  end_station_name = 'Peoria St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '135'
WHERE
  start_station_name = 'Halsted St & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '135'
WHERE
  end_station_name = 'Halsted St & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '137'
WHERE
  start_station_name = 'Morgan Ave & 14th Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '137'
WHERE
  end_station_name = 'Morgan Ave & 14th Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '138'
WHERE
  start_station_name = 'Clybourn Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '138'
WHERE
  end_station_name = 'Clybourn Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '140'
WHERE
  start_station_name = 'Dearborn Pkwy & Delaware Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '140'
WHERE
  end_station_name = 'Dearborn Pkwy & Delaware Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '141'
WHERE
  start_station_name = 'Clark St & Lincoln Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '141'
WHERE
  end_station_name = 'Clark St & Lincoln Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '142'
WHERE
  start_station_name = 'McClurg Ct & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '142'
WHERE
  end_station_name = 'McClurg Ct & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '143'
WHERE
  start_station_name = 'Sedgwick St & Webster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '143'
WHERE
  end_station_name = 'Sedgwick St & Webster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '144'
WHERE
  start_station_name = 'Larrabee St & Webster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '144'
WHERE
  end_station_name = 'Larrabee St & Webster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '145'
WHERE
  start_station_name = 'Mies van der Rohe Way & Chestnut St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '145'
WHERE
  end_station_name = 'Mies van der Rohe Way & Chestnut St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '147'
WHERE
  start_station_name = 'Indiana Ave & 26th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '147'
WHERE
  end_station_name = 'Indiana Ave & 26th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '148'
WHERE
  start_station_name = 'State St & 33rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '148'
WHERE
  end_station_name = 'State St & 33rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '15'
WHERE
  start_station_name = 'Racine Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '15'
WHERE
  end_station_name = 'Racine Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '152'
WHERE
  start_station_name = 'Lincoln Ave & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '152'
WHERE
  end_station_name = 'Lincoln Ave & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '154'
WHERE
  start_station_name = 'Southport Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '154'
WHERE
  end_station_name = 'Southport Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '156'
WHERE
  start_station_name = 'Clark St & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '156'
WHERE
  end_station_name = 'Clark St & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '157'
WHERE
  start_station_name = 'Lake Shore Dr & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '157'
WHERE
  end_station_name = 'Lake Shore Dr & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '158'
WHERE
  start_station_name = 'Milwaukee Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '158'
WHERE
  end_station_name = 'Milwaukee Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '160'
WHERE
  start_station_name = 'Campbell Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '160'
WHERE
  end_station_name = 'Campbell Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '161'
WHERE
  start_station_name = 'Rush St & Superior St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '161'
WHERE
  end_station_name = 'Rush St & Superior St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '163'
WHERE
  start_station_name = 'Damen Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '163'
WHERE
  end_station_name = 'Damen Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '164'
WHERE
  start_station_name = 'Franklin St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '164'
WHERE
  end_station_name = 'Franklin St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '166'
WHERE
  start_station_name = 'Ashland Ave & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '166'
WHERE
  end_station_name = 'Ashland Ave & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '168'
WHERE
  start_station_name = 'Michigan Ave & 14th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '168'
WHERE
  end_station_name = 'Michigan Ave & 14th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '169'
WHERE
  start_station_name = 'Canal St & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '169'
WHERE
  end_station_name = 'Canal St & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '170'
WHERE
  start_station_name = 'Clinton St & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '170'
WHERE
  end_station_name = 'Clinton St & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '171'
WHERE
  start_station_name = 'May St & Cullerton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '171'
WHERE
  end_station_name = 'May St & Cullerton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '172'
WHERE
  start_station_name = 'Rush St & Cedar St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '172'
WHERE
  end_station_name = 'Rush St & Cedar St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '173'
WHERE
  start_station_name = 'Mies van der Rohe Way & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '173'
WHERE
  end_station_name = 'Mies van der Rohe Way & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '174'
WHERE
  start_station_name = 'Canal St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '174'
WHERE
  end_station_name = 'Canal St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '175'
WHERE
  start_station_name = 'Wells St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '175'
WHERE
  end_station_name = 'Wells St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '176'
WHERE
  start_station_name = 'Clark St & Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '176'
WHERE
  end_station_name = 'Clark St & Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '177'
WHERE
  start_station_name = 'Theater on the Lake';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '177'
WHERE
  end_station_name = 'Theater on the Lake';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '178'
WHERE
  start_station_name = 'State St & 19th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '178'
WHERE
  end_station_name = 'State St & 19th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '18'
WHERE
  start_station_name = 'Wacker Dr & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '18'
WHERE
  end_station_name = 'Wacker Dr & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '180'
WHERE
  start_station_name = 'Ritchie Ct & Banks St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '180'
WHERE
  end_station_name = 'Ritchie Ct & Banks St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '181'
WHERE
  start_station_name = 'LaSalle St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '181'
WHERE
  end_station_name = 'LaSalle St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '182'
WHERE
  start_station_name = 'Wells St & Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '182'
WHERE
  end_station_name = 'Wells St & Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '184'
WHERE
  start_station_name = 'State St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '184'
WHERE
  end_station_name = 'State St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '185'
WHERE
  start_station_name = 'Stave St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '185'
WHERE
  end_station_name = 'Stave St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '186'
WHERE
  start_station_name = 'Ogden Ave & Race Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '186'
WHERE
  end_station_name = 'Ogden Ave & Race Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '188'
WHERE
  start_station_name = 'Greenview Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '188'
WHERE
  end_station_name = 'Greenview Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '191'
WHERE
  start_station_name = 'Canal St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '191'
WHERE
  end_station_name = 'Canal St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '192'
WHERE
  start_station_name = 'Canal St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '192'
WHERE
  end_station_name = 'Canal St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '194'
WHERE
  start_station_name = 'Wabash Ave & Wacker Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '194'
WHERE
  end_station_name = 'Wabash Ave & Wacker Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '195'
WHERE
  start_station_name = 'Columbus Dr & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '195'
WHERE
  end_station_name = 'Columbus Dr & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '196'
WHERE
  start_station_name = 'Cityfront Plaza Dr & Pioneer Ct';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '196'
WHERE
  end_station_name = 'Cityfront Plaza Dr & Pioneer Ct';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '197'
WHERE
  start_station_name = 'Michigan Ave & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '197'
WHERE
  end_station_name = 'Michigan Ave & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '198'
WHERE
  start_station_name = 'Green St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '198'
WHERE
  end_station_name = 'Green St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '199'
WHERE
  start_station_name = 'Wabash Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '199'
WHERE
  end_station_name = 'Wabash Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '2'
WHERE
  start_station_name = 'Buckingham Fountain';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '2'
WHERE
  end_station_name = 'Buckingham Fountain';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20'
WHERE
  start_station_name = 'Sheffield Ave & Kingsbury St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20'
WHERE
  end_station_name = 'Sheffield Ave & Kingsbury St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20016'
WHERE
  start_station_name = 'Wood St & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20016'
WHERE
  end_station_name = 'Wood St & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20021'
WHERE
  start_station_name = 'Wabash Ave & 9th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20021'
WHERE
  end_station_name = 'Wabash Ave & 9th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20041'
WHERE
  start_station_name = 'Aberdeen St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20041'
WHERE
  end_station_name = 'Aberdeen St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20042'
WHERE
  start_station_name = 'Milwaukee Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20042'
WHERE
  end_station_name = 'Milwaukee Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20044'
WHERE
  start_station_name = 'Racine Ave & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20044'
WHERE
  end_station_name = 'Racine Ave & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20047'
WHERE
  start_station_name = 'Throop St & Taylor St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20047'
WHERE
  end_station_name = 'Throop St & Taylor St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20048'
WHERE
  start_station_name = 'New St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20048'
WHERE
  end_station_name = 'New St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20049'
WHERE
  start_station_name = 'Michigan Ave & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20049'
WHERE
  end_station_name = 'Michigan Ave & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20051'
WHERE
  start_station_name = 'Halsted St & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20051'
WHERE
  end_station_name = 'Halsted St & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20055'
WHERE
  start_station_name = 'Financial Pl & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20055'
WHERE
  end_station_name = 'Financial Pl & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20059'
WHERE
  start_station_name = 'Wentworth Ave & Cermak Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20059'
WHERE
  end_station_name = 'Wentworth Ave & Cermak Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20065'
WHERE
  start_station_name = 'Clark St & Drummond Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20065'
WHERE
  end_station_name = 'Clark St & Drummond Pl';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20069'
WHERE
  start_station_name = 'Winthrop Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20069'
WHERE
  end_station_name = 'Winthrop Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20072'
WHERE
  start_station_name = 'Halsted St & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20072'
WHERE
  end_station_name = 'Halsted St & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20073'
WHERE
  start_station_name = 'Burling St & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20073'
WHERE
  end_station_name = 'Burling St & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20075'
WHERE
  start_station_name = 'Paulina St & Flournoy St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20075'
WHERE
  end_station_name = 'Paulina St & Flournoy St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20076'
WHERE
  start_station_name = 'Washtenaw Ave & Ogden Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20076'
WHERE
  end_station_name = 'Washtenaw Ave & Ogden Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20078'
WHERE
  start_station_name = 'Winchester (Ravenswood) Ave & Balmoral Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20078'
WHERE
  end_station_name = 'Winchester (Ravenswood) Ave & Balmoral Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '205'
WHERE
  start_station_name = 'Paulina St & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '205'
WHERE
  end_station_name = 'Paulina St & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '207'
WHERE
  start_station_name = 'Emerald Ave & 28th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '207'
WHERE
  end_station_name = 'Emerald Ave & 28th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '21'
WHERE
  start_station_name = 'Aberdeen St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '21'
WHERE
  end_station_name = 'Aberdeen St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '210'
WHERE
  start_station_name = 'Ashland Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '210'
WHERE
  end_station_name = 'Ashland Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '211'
WHERE
  start_station_name = 'St. Clair St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '211'
WHERE
  end_station_name = 'St. Clair St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '212'
WHERE
  start_station_name = 'Wells St & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '212'
WHERE
  end_station_name = 'Wells St & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '214'
WHERE
  start_station_name = 'Damen Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '214'
WHERE
  end_station_name = 'Damen Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '219'
WHERE
  start_station_name = 'Damen Ave & Cortland St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '219'
WHERE
  end_station_name = 'Damen Ave & Cortland St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '22'
WHERE
  start_station_name = 'May St & Taylor St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '22'
WHERE
  end_station_name = 'May St & Taylor St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '222'
WHERE
  start_station_name = 'Milwaukee Ave & Rockwell St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '222'
WHERE
  end_station_name = 'Milwaukee Ave & Rockwell St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '225'
WHERE
  start_station_name = 'Halsted St & Dickens Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '225'
WHERE
  end_station_name = 'Halsted St & Dickens Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '226'
WHERE
  start_station_name = 'Racine Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '226'
WHERE
  end_station_name = 'Racine Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '227'
WHERE
  start_station_name = 'Southport Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '227'
WHERE
  end_station_name = 'Southport Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '229'
WHERE
  start_station_name = 'Southport Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '229'
WHERE
  end_station_name = 'Southport Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '23'
WHERE
  start_station_name = 'Orleans St & Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '23'
WHERE
  end_station_name = 'Orleans St & Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '230'
WHERE
  start_station_name = 'Lincoln Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '230'
WHERE
  end_station_name = 'Lincoln Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '231'
WHERE
  start_station_name = 'Sheridan Rd & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '231'
WHERE
  end_station_name = 'Sheridan Rd & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '232'
WHERE
  start_station_name = 'Pine Grove Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '232'
WHERE
  end_station_name = 'Pine Grove Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '234'
WHERE
  start_station_name = 'Clark St & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '234'
WHERE
  end_station_name = 'Clark St & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '236'
WHERE
  start_station_name = 'Sedgwick St & Schiller St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '236'
WHERE
  end_station_name = 'Sedgwick St & Schiller St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '239'
WHERE
  start_station_name = 'Western Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '239'
WHERE
  end_station_name = 'Western Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '24'
WHERE
  start_station_name = 'Fairbanks Ct & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '24'
WHERE
  end_station_name = 'Fairbanks Ct & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '240'
WHERE
  start_station_name = 'Sheridan Rd & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '240'
WHERE
  end_station_name = 'Sheridan Rd & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '241'
WHERE
  start_station_name = 'Morgan St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '241'
WHERE
  end_station_name = 'Morgan St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '242'
WHERE
  start_station_name = 'Damen Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '242'
WHERE
  end_station_name = 'Damen Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '244'
WHERE
  start_station_name = 'Ravenswood Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '244'
WHERE
  end_station_name = 'Ravenswood Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '245'
WHERE
  start_station_name = 'Clarendon Ave & Junior Ter';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '245'
WHERE
  end_station_name = 'Clarendon Ave & Junior Ter';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '247'
WHERE
  start_station_name = 'Shore Dr & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '247'
WHERE
  end_station_name = 'Shore Dr & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '248'
WHERE
  start_station_name = 'Woodlawn Ave & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '248'
WHERE
  end_station_name = 'Woodlawn Ave & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '249'
WHERE
  start_station_name = 'Montrose Harbor';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '249'
WHERE
  end_station_name = 'Montrose Harbor';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '25'
WHERE
  start_station_name = 'Michigan Ave & Pearson St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '25'
WHERE
  end_station_name = 'Michigan Ave & Pearson St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '250'
WHERE
  start_station_name = 'Ashland Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '250'
WHERE
  end_station_name = 'Ashland Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '251'
WHERE
  start_station_name = 'Clarendon Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '251'
WHERE
  end_station_name = 'Clarendon Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '252'
WHERE
  start_station_name = 'Greenwood Ave & 47th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '252'
WHERE
  end_station_name = 'Greenwood Ave & 47th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '254'
WHERE
  start_station_name = 'Pine Grove Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '254'
WHERE
  end_station_name = 'Pine Grove Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '255'
WHERE
  start_station_name = 'Indiana Ave & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '255'
WHERE
  end_station_name = 'Indiana Ave & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '256'
WHERE
  start_station_name = 'Broadway & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '256'
WHERE
  end_station_name = 'Broadway & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '260'
WHERE
  start_station_name = 'Kedzie Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '260'
WHERE
  end_station_name = 'Kedzie Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '263'
WHERE
  start_station_name = 'Rhodes Ave & 32nd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '263'
WHERE
  end_station_name = 'Rhodes Ave & 32nd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '264'
WHERE
  start_station_name = 'Stetson Ave & South Water St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '264'
WHERE
  end_station_name = 'Stetson Ave & South Water St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '268'
WHERE
  start_station_name = 'Lake Shore Dr & North Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '268'
WHERE
  end_station_name = 'Lake Shore Dr & North Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '27'
WHERE
  start_station_name = 'Larrabee St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '27'
WHERE
  end_station_name = 'Larrabee St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '272'
WHERE
  start_station_name = 'Indiana Ave & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '272'
WHERE
  end_station_name = 'Indiana Ave & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '273'
WHERE
  start_station_name = 'Michigan Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '273'
WHERE
  end_station_name = 'Michigan Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '274'
WHERE
  start_station_name = 'Racine Ave & 15th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '274'
WHERE
  end_station_name = 'Racine Ave & 15th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '275'
WHERE
  start_station_name = 'Ashland Ave & 13th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '275'
WHERE
  end_station_name = 'Ashland Ave & 13th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '276'
WHERE
  start_station_name = 'California Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '276'
WHERE
  end_station_name = 'California Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '28'
WHERE
  start_station_name = 'Larrabee St & Menomonee St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '28'
WHERE
  end_station_name = 'Larrabee St & Menomonee St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '282'
WHERE
  start_station_name = 'Halsted St & Maxwell St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '282'
WHERE
  end_station_name = 'Halsted St & Maxwell St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '283'
WHERE
  start_station_name = 'LaSalle St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '283'
WHERE
  end_station_name = 'LaSalle St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '284'
WHERE
  start_station_name = 'Michigan Ave & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '284'
WHERE
  end_station_name = 'Michigan Ave & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '287'
WHERE
  start_station_name = 'Franklin St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '287'
WHERE
  end_station_name = 'Franklin St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '289'
WHERE
  start_station_name = 'Wells St & Concord Ln';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '289'
WHERE
  end_station_name = 'Wells St & Concord Ln';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '29'
WHERE
  start_station_name = 'Noble St & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '29'
WHERE
  end_station_name = 'Noble St & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '291'
WHERE
  start_station_name = 'Wells St & Evergreen Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '291'
WHERE
  end_station_name = 'Wells St & Evergreen Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '294'
WHERE
  start_station_name = 'Broadway & Berwyn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '294'
WHERE
  end_station_name = 'Broadway & Berwyn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '295'
WHERE
  start_station_name = 'Broadway & Argyle St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '295'
WHERE
  end_station_name = 'Broadway & Argyle St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '296'
WHERE
  start_station_name = 'Broadway & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '296'
WHERE
  end_station_name = 'Broadway & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '298'
WHERE
  start_station_name = 'Lincoln Ave & Belle Plaine Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '298'
WHERE
  end_station_name = 'Lincoln Ave & Belle Plaine Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '299'
WHERE
  start_station_name = 'Halsted St & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '299'
WHERE
  end_station_name = 'Halsted St & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '3'
WHERE
  start_station_name = 'Shedd Aquarium';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '3'
WHERE
  end_station_name = 'Shedd Aquarium';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '30'
WHERE
  start_station_name = 'Ashland Ave & Augusta Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '30'
WHERE
  end_station_name = 'Ashland Ave & Augusta Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '300'
WHERE
  start_station_name = 'Broadway & Barry Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '300'
WHERE
  end_station_name = 'Broadway & Barry Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '301'
WHERE
  start_station_name = 'Clark St & Schiller St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '301'
WHERE
  end_station_name = 'Clark St & Schiller St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '302'
WHERE
  start_station_name = 'Sheffield Ave & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '302'
WHERE
  end_station_name = 'Sheffield Ave & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '303'
WHERE
  start_station_name = 'Broadway & Cornelia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '303'
WHERE
  end_station_name = 'Broadway & Cornelia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '304'
WHERE
  start_station_name = 'Broadway & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '304'
WHERE
  end_station_name = 'Broadway & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '305'
WHERE
  start_station_name = 'Western Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '305'
WHERE
  end_station_name = 'Western Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '307'
WHERE
  start_station_name = 'Southport Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '307'
WHERE
  end_station_name = 'Southport Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '309'
WHERE
  start_station_name = 'Leavitt St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '309'
WHERE
  end_station_name = 'Leavitt St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '31'
WHERE
  start_station_name = 'Franklin St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '31'
WHERE
  end_station_name = 'Franklin St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '312'
WHERE
  start_station_name = 'Clarendon Ave & Gordon Ter';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '312'
WHERE
  end_station_name = 'Clarendon Ave & Gordon Ter';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '313'
WHERE
  start_station_name = 'Lakeview Ave & Fullerton Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '313'
WHERE
  end_station_name = 'Lakeview Ave & Fullerton Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '314'
WHERE
  start_station_name = 'Ravenswood Ave & Berteau Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '314'
WHERE
  end_station_name = 'Ravenswood Ave & Berteau Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '315'
WHERE
  start_station_name = 'Elston Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '315'
WHERE
  end_station_name = 'Elston Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '316'
WHERE
  start_station_name = 'Damen Ave & Sunnyside Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '316'
WHERE
  end_station_name = 'Damen Ave & Sunnyside Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '318'
WHERE
  start_station_name = 'Southport Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '318'
WHERE
  end_station_name = 'Southport Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '319'
WHERE
  start_station_name = 'Greenview Ave & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '319'
WHERE
  end_station_name = 'Greenview Ave & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '32'
WHERE
  start_station_name = 'Racine Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '32'
WHERE
  end_station_name = 'Racine Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '320'
WHERE
  start_station_name = 'Loomis St & Lexington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '320'
WHERE
  end_station_name = 'Loomis St & Lexington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '322'
WHERE
  start_station_name = 'Kimbark Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '322'
WHERE
  end_station_name = 'Kimbark Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '324'
WHERE
  start_station_name = 'Stockton Dr & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '324'
WHERE
  end_station_name = 'Stockton Dr & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '325'
WHERE
  start_station_name = 'Clark St & Winnemac Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '325'
WHERE
  end_station_name = 'Clark St & Winnemac Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '326'
WHERE
  start_station_name = 'Clark St & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '326'
WHERE
  end_station_name = 'Clark St & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '327'
WHERE
  start_station_name = 'Sheffield Ave & Webster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '327'
WHERE
  end_station_name = 'Sheffield Ave & Webster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '328'
WHERE
  start_station_name = 'Ellis Ave & 58th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '328'
WHERE
  end_station_name = 'Ellis Ave & 58th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '329'
WHERE
  start_station_name = 'Lake Shore Dr & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '329'
WHERE
  end_station_name = 'Lake Shore Dr & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '33'
WHERE
  start_station_name = 'State St & Van Buren St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '33'
WHERE
  end_station_name = 'State St & Van Buren St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '334'
WHERE
  start_station_name = 'Lake Shore Dr & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '334'
WHERE
  end_station_name = 'Lake Shore Dr & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '335'
WHERE
  start_station_name = 'Calumet Ave & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '335'
WHERE
  end_station_name = 'Calumet Ave & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '337'
WHERE
  start_station_name = 'Clark St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '337'
WHERE
  end_station_name = 'Clark St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '338'
WHERE
  start_station_name = 'Calumet Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '338'
WHERE
  end_station_name = 'Calumet Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '340'
WHERE
  start_station_name = 'Clark St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '340'
WHERE
  end_station_name = 'Clark St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '341'
WHERE
  start_station_name = 'Adler Planetarium';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '341'
WHERE
  end_station_name = 'Adler Planetarium';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '342'
WHERE
  start_station_name = 'Wolcott Ave & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '342'
WHERE
  end_station_name = 'Wolcott Ave & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '344'
WHERE
  start_station_name = 'Ravenswood Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '344'
WHERE
  end_station_name = 'Ravenswood Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '345'
WHERE
  start_station_name = 'Lake Park Ave & 56th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '345'
WHERE
  end_station_name = 'Lake Park Ave & 56th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '347'
WHERE
  start_station_name = 'Ashland Ave & Grace St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '347'
WHERE
  end_station_name = 'Ashland Ave & Grace St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '348'
WHERE
  start_station_name = 'California Ave & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '348'
WHERE
  end_station_name = 'California Ave & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '349'
WHERE
  start_station_name = 'Halsted St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '349'
WHERE
  end_station_name = 'Halsted St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '35'
WHERE
  start_station_name = 'Streeter Dr & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '35'
WHERE
  end_station_name = 'Streeter Dr & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '351'
WHERE
  start_station_name = 'Cottage Grove Ave & 51st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '351'
WHERE
  end_station_name = 'Cottage Grove Ave & 51st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '355'
WHERE
  start_station_name = 'South Shore Dr & 67th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '355'
WHERE
  end_station_name = 'South Shore Dr & 67th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '359'
WHERE
  start_station_name = 'Larrabee St & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '359'
WHERE
  end_station_name = 'Larrabee St & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '36'
WHERE
  start_station_name = 'Franklin St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '36'
WHERE
  end_station_name = 'Franklin St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '364'
WHERE
  start_station_name = 'Larrabee St & Oak St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '364'
WHERE
  end_station_name = 'Larrabee St & Oak St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '367'
WHERE
  start_station_name = 'Racine Ave & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '367'
WHERE
  end_station_name = 'Racine Ave & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '37'
WHERE
  start_station_name = 'Dearborn St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '37'
WHERE
  end_station_name = 'Dearborn St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '374'
WHERE
  start_station_name = 'Western Ave & Walton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '374'
WHERE
  end_station_name = 'Western Ave & Walton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '376'
WHERE
  start_station_name = 'Artesian Ave & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '376'
WHERE
  end_station_name = 'Artesian Ave & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '38'
WHERE
  start_station_name = 'Clark St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '38'
WHERE
  end_station_name = 'Clark St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '393'
WHERE
  start_station_name = 'Calumet Ave & 71st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '393'
WHERE
  end_station_name = 'Calumet Ave & 71st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '394'
WHERE
  start_station_name = 'Clark St & 9th St (AMLI)';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '394'
WHERE
  end_station_name = 'Clark St & 9th St (AMLI)';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '4'
WHERE
  start_station_name = 'Burnham Harbor';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '4'
WHERE
  end_station_name = 'Burnham Harbor';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '40'
WHERE
  start_station_name = 'LaSalle St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '40'
WHERE
  end_station_name = 'LaSalle St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '402'
WHERE
  start_station_name = 'Shields Ave & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '402'
WHERE
  end_station_name = 'Shields Ave & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '41'
WHERE
  start_station_name = 'Federal St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '41'
WHERE
  end_station_name = 'Federal St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '414'
WHERE
  start_station_name = 'Canal St & Taylor St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '414'
WHERE
  end_station_name = 'Canal St & Taylor St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '417'
WHERE
  start_station_name = 'Cornell Ave & Hyde Park Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '417'
WHERE
  end_station_name = 'Cornell Ave & Hyde Park Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '418'
WHERE
  start_station_name = 'Ellis Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '418'
WHERE
  end_station_name = 'Ellis Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '419'
WHERE
  start_station_name = 'Lake Park Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '419'
WHERE
  end_station_name = 'Lake Park Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '420'
WHERE
  start_station_name = 'Ellis Ave & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '420'
WHERE
  end_station_name = 'Ellis Ave & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '423'
WHERE
  start_station_name = 'University Ave & 57th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '423'
WHERE
  end_station_name = 'University Ave & 57th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '425'
WHERE
  start_station_name = 'Harper Ave & 59th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '425'
WHERE
  end_station_name = 'Harper Ave & 59th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '426'
WHERE
  start_station_name = 'Ellis Ave & 60th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '426'
WHERE
  end_station_name = 'Ellis Ave & 60th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '43'
WHERE
  start_station_name = 'Michigan Ave & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '43'
WHERE
  end_station_name = 'Michigan Ave & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '44'
WHERE
  start_station_name = 'State St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '44'
WHERE
  end_station_name = 'State St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '454'
WHERE
  start_station_name = 'Broadway & Granville Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '454'
WHERE
  end_station_name = 'Broadway & Granville Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '457'
WHERE
  start_station_name = 'Clark St & Elmdale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '457'
WHERE
  end_station_name = 'Clark St & Elmdale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '459'
WHERE
  start_station_name = 'Lakefront Trail & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '459'
WHERE
  end_station_name = 'Lakefront Trail & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '46'
WHERE
  start_station_name = 'Wells St & Walton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '46'
WHERE
  end_station_name = 'Wells St & Walton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '463'
WHERE
  start_station_name = 'Clark St & Berwyn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '463'
WHERE
  end_station_name = 'Clark St & Berwyn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '465'
WHERE
  start_station_name = 'Marine Dr & Ainslie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '465'
WHERE
  end_station_name = 'Marine Dr & Ainslie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '467'
WHERE
  start_station_name = 'Western Ave & Lunt Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '467'
WHERE
  end_station_name = 'Western Ave & Lunt Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '468'
WHERE
  start_station_name = 'Budlong Woods Library';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '468'
WHERE
  end_station_name = 'Budlong Woods Library';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '47'
WHERE
  start_station_name = 'State St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '47'
WHERE
  end_station_name = 'State St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '474'
WHERE
  start_station_name = 'Christiana Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '474'
WHERE
  end_station_name = 'Christiana Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '479'
WHERE
  start_station_name = 'Drake Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '479'
WHERE
  end_station_name = 'Drake Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '48'
WHERE
  start_station_name = 'Larrabee St & Kingsbury St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '48'
WHERE
  end_station_name = 'Larrabee St & Kingsbury St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '484'
WHERE
  start_station_name = 'Monticello Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '484'
WHERE
  end_station_name = 'Monticello Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '485'
WHERE
  start_station_name = 'Sawyer Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '485'
WHERE
  end_station_name = 'Sawyer Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '489'
WHERE
  start_station_name = 'Drake Ave & Addison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '489'
WHERE
  end_station_name = 'Drake Ave & Addison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '49'
WHERE
  start_station_name = 'Dearborn St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '49'
WHERE
  end_station_name = 'Dearborn St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '494'
WHERE
  start_station_name = 'Kedzie Ave & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '494'
WHERE
  end_station_name = 'Kedzie Ave & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '498'
WHERE
  start_station_name = 'California Ave & Fletcher St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '498'
WHERE
  end_station_name = 'California Ave & Fletcher St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '499'
WHERE
  start_station_name = 'Kosciuszko Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '499'
WHERE
  end_station_name = 'Kosciuszko Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '5'
WHERE
  start_station_name = 'State St & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '5'
WHERE
  end_station_name = 'State St & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '502'
WHERE
  start_station_name = 'California Ave & Altgeld St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '502'
WHERE
  end_station_name = 'California Ave & Altgeld St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '504'
WHERE
  start_station_name = 'Campbell Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '504'
WHERE
  end_station_name = 'Campbell Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '506'
WHERE
  start_station_name = 'Spaulding Ave & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '506'
WHERE
  end_station_name = 'Spaulding Ave & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '51'
WHERE
  start_station_name = 'Clark St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '51'
WHERE
  end_station_name = 'Clark St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '52'
WHERE
  start_station_name = 'Michigan Ave & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '52'
WHERE
  end_station_name = 'Michigan Ave & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '533'
WHERE
  start_station_name = 'Central Park Blvd & 5th Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '533'
WHERE
  end_station_name = 'Central Park Blvd & 5th Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '54'
WHERE
  start_station_name = 'Ogden Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '54'
WHERE
  end_station_name = 'Ogden Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '293'
WHERE
  start_station_name = 'Broadway & Wilson - Truman College Vaccination Site';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '293'
WHERE
  end_station_name = 'Broadway & Wilson - Truman College Vaccination Site';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '259'
WHERE
  start_station_name = 'California Ave & Francis Pl (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '259'
WHERE
  end_station_name = 'California Ave & Francis Pl (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '317'
WHERE
  start_station_name = 'Wood St & Taylor St (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '317'
WHERE
  end_station_name = 'Wood St & Taylor St (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '550'
WHERE
  start_station_name = 'Central Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '550'
WHERE
  end_station_name = 'Central Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '56'
WHERE
  start_station_name = 'Desplaines St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '56'
WHERE
  end_station_name = 'Desplaines St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '57'
WHERE
  start_station_name = 'Clinton St & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '57'
WHERE
  end_station_name = 'Clinton St & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '58'
WHERE
  start_station_name = 'Marshfield Ave & Cortland St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '58'
WHERE
  end_station_name = 'Marshfield Ave & Cortland St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '59'
WHERE
  start_station_name = 'Wabash Ave & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '59'
WHERE
  end_station_name = 'Wabash Ave & Roosevelt Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '597'
WHERE
  start_station_name = 'Chicago Ave & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '597'
WHERE
  end_station_name = 'Chicago Ave & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '6'
WHERE
  start_station_name = 'Dusable Harbor';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '6'
WHERE
  end_station_name = 'Dusable Harbor';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '60'
WHERE
  start_station_name = 'Dayton St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '60'
WHERE
  end_station_name = 'Dayton St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '603'
WHERE
  start_station_name = 'Chicago Ave & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '603'
WHERE
  end_station_name = 'Chicago Ave & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '61'
WHERE
  start_station_name = 'Wood St & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '61'
WHERE
  end_station_name = 'Wood St & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '621'
WHERE
  start_station_name = 'Aberdeen St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '621'
WHERE
  end_station_name = 'Aberdeen St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '627'
WHERE
  start_station_name = 'LaSalle Dr & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '627'
WHERE
  end_station_name = 'LaSalle Dr & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '635'
WHERE
  start_station_name = 'Fairbanks St & Superior St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '635'
WHERE
  end_station_name = 'Fairbanks St & Superior St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '640'
WHERE
  start_station_name = 'Bernard St & Elston Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '640'
WHERE
  end_station_name = 'Bernard St & Elston Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '641'
WHERE
  start_station_name = 'Central Park Ave & Bloomingdale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '641'
WHERE
  end_station_name = 'Central Park Ave & Bloomingdale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '656'
WHERE
  start_station_name = 'Damen Ave & Walnut (Lake) St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '656'
WHERE
  end_station_name = 'Damen Ave & Walnut (Lake) St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '659'
WHERE
  start_station_name = 'Leavitt St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '659'
WHERE
  end_station_name = 'Leavitt St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '66'
WHERE
  start_station_name = 'Clinton St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '66'
WHERE
  end_station_name = 'Clinton St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '67'
WHERE
  start_station_name = 'Sheffield Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '67'
WHERE
  end_station_name = 'Sheffield Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '672'
WHERE
  start_station_name = 'Franklin St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '672'
WHERE
  end_station_name = 'Franklin St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '673'
WHERE
  start_station_name = 'Lincoln Park Conservatory';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '673'
WHERE
  end_station_name = 'Lincoln Park Conservatory';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '69'
WHERE
  start_station_name = 'Damen Ave & Pierce Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '69'
WHERE
  end_station_name = 'Damen Ave & Pierce Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '7'
WHERE
  start_station_name = 'Field Blvd & South Water St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '7'
WHERE
  end_station_name = 'Field Blvd & South Water St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '71'
WHERE
  start_station_name = 'Morgan St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '71'
WHERE
  end_station_name = 'Morgan St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '72'
WHERE
  start_station_name = 'Wabash Ave & 16th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '72'
WHERE
  end_station_name = 'Wabash Ave & 16th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '73'
WHERE
  start_station_name = 'Jefferson St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '73'
WHERE
  end_station_name = 'Jefferson St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '74'
WHERE
  start_station_name = 'Kingsbury St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '74'
WHERE
  end_station_name = 'Kingsbury St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '76'
WHERE
  start_station_name = 'Lake Shore Dr & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '76'
WHERE
  end_station_name = 'Lake Shore Dr & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '77'
WHERE
  start_station_name = 'Clinton St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '77'
WHERE
  end_station_name = 'Clinton St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '81'
WHERE
  start_station_name = 'Daley Center Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '81'
WHERE
  end_station_name = 'Daley Center Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '85'
WHERE
  start_station_name = 'Michigan Ave & Oak St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '85'
WHERE
  end_station_name = 'Michigan Ave & Oak St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '86'
WHERE
  start_station_name = 'Eckhart Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '86'
WHERE
  end_station_name = 'Eckhart Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '87'
WHERE
  start_station_name = 'Racine Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '87'
WHERE
  end_station_name = 'Racine Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '9'
WHERE
  start_station_name = 'Leavitt St & Archer Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '9'
WHERE
  end_station_name = 'Leavitt St & Archer Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '90'
WHERE
  start_station_name = 'Millennium Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '90'
WHERE
  end_station_name = 'Millennium Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '91'
WHERE
  start_station_name = 'Clinton St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '91'
WHERE
  end_station_name = 'Clinton St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '92'
WHERE
  start_station_name = 'Carpenter St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '92'
WHERE
  end_station_name = 'Carpenter St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '93'
WHERE
  start_station_name = 'Sheffield Ave & Willow St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '93'
WHERE
  end_station_name = 'Sheffield Ave & Willow St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '94'
WHERE
  start_station_name = 'Clark St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '94'
WHERE
  end_station_name = 'Clark St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '96'
WHERE
  start_station_name = 'Desplaines St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '96'
WHERE
  end_station_name = 'Desplaines St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '98'
WHERE
  start_station_name = 'LaSalle St & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '98'
WHERE
  end_station_name = 'LaSalle St & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '99'
WHERE
  start_station_name = 'Lake Shore Dr & Ohio St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '99'
WHERE
  end_station_name = 'Lake Shore Dr & Ohio St';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '103'
WHERE
  start_station_name = 'Clinton St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '103'
WHERE
  end_station_name = 'Clinton St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '123'
WHERE
  start_station_name = 'California Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '123'
WHERE
  end_station_name = 'California Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '126'
WHERE
  start_station_name = 'Clark St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '126'
WHERE
  end_station_name = 'Clark St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '136'
WHERE
  start_station_name = 'Racine Ave & 13th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '136'
WHERE
  end_station_name = 'Racine Ave & 13th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '146'
WHERE
  start_station_name = 'Loomis St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '146'
WHERE
  end_station_name = 'Loomis St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '153'
WHERE
  start_station_name = 'Southport Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '153'
WHERE
  end_station_name = 'Southport Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '165'
WHERE
  start_station_name = 'Clark St & Grace St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '165'
WHERE
  end_station_name = 'Clark St & Grace St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '190'
WHERE
  start_station_name = 'Southport Ave & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '190'
WHERE
  end_station_name = 'Southport Ave & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20062'
WHERE
  start_station_name = 'Damen Ave & Thomas St (Augusta Blvd)';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20062'
WHERE
  end_station_name = 'Damen Ave & Thomas St (Augusta Blvd)';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20063'
WHERE
  start_station_name = 'Laflin St & Cullerton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20063'
WHERE
  end_station_name = 'Laflin St & Cullerton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20064'
WHERE
  start_station_name = 'Elizabeth (May) St & Fulton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20064'
WHERE
  end_station_name = 'Elizabeth (May) St & Fulton St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '20068'
WHERE
  start_station_name = 'Lincoln Ave & Sunnyside Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '20068'
WHERE
  end_station_name = 'Lincoln Ave & Sunnyside Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '213'
WHERE
  start_station_name = 'Leavitt St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '213'
WHERE
  end_station_name = 'Leavitt St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '223'
WHERE
  start_station_name = 'Clifton Ave & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '223'
WHERE
  end_station_name = 'Clifton Ave & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '224'
WHERE
  start_station_name = 'Halsted St & Willow St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '224'
WHERE
  end_station_name = 'Halsted St & Willow St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '233'
WHERE
  start_station_name = 'Sangamon St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '233'
WHERE
  end_station_name = 'Sangamon St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '277'
WHERE
  start_station_name = 'Ashland Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '277'
WHERE
  end_station_name = 'Ashland Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '278'
WHERE
  start_station_name = 'Wallace St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '278'
WHERE
  end_station_name = 'Wallace St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '323'
WHERE
  start_station_name = 'Sheridan Rd & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '323'
WHERE
  end_station_name = 'Sheridan Rd & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '333'
WHERE
  start_station_name = 'Ashland Ave & Blackhawk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '333'
WHERE
  end_station_name = 'Ashland Ave & Blackhawk St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '346'
WHERE
  start_station_name = 'Ada St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '346'
WHERE
  end_station_name = 'Ada St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '350'
WHERE
  start_station_name = 'Ashland Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '350'
WHERE
  end_station_name = 'Ashland Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '352'
WHERE
  start_station_name = 'Jeffery Blvd & 67th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '352'
WHERE
  end_station_name = 'Jeffery Blvd & 67th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '365'
WHERE
  start_station_name = 'Halsted St & North Branch St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '365'
WHERE
  end_station_name = 'Halsted St & North Branch St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '370'
WHERE
  start_station_name = 'Calumet Ave & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '370'
WHERE
  end_station_name = 'Calumet Ave & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '375'
WHERE
  start_station_name = 'Sacramento Blvd & Franklin Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '375'
WHERE
  end_station_name = 'Sacramento Blvd & Franklin Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '382'
WHERE
  start_station_name = 'Western Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '382'
WHERE
  end_station_name = 'Western Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '410'
WHERE
  start_station_name = 'Prairie Ave & 43rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '410'
WHERE
  end_station_name = 'Prairie Ave & 43rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '432'
WHERE
  start_station_name = 'Clark St & Lunt Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '432'
WHERE
  end_station_name = 'Clark St & Lunt Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '441'
WHERE
  start_station_name = 'Kedzie Ave & 24th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '441'
WHERE
  end_station_name = 'Kedzie Ave & 24th St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '452'
WHERE
  start_station_name = 'Western Ave & Granville Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '452'
WHERE
  end_station_name = 'Western Ave & Granville Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '458'
WHERE
  start_station_name = 'Broadway & Thorndale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '458'
WHERE
  end_station_name = 'Broadway & Thorndale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '460'
WHERE
  start_station_name = 'Clark St & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '460'
WHERE
  end_station_name = 'Clark St & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '464'
WHERE
  start_station_name = 'Damen Ave & Foster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '464'
WHERE
  end_station_name = 'Damen Ave & Foster Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '481'
WHERE
  start_station_name = 'California Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '481'
WHERE
  end_station_name = 'California Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '496'
WHERE
  start_station_name = 'Avers Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '496'
WHERE
  end_station_name = 'Avers Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '508'
WHERE
  start_station_name = 'Central Park Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '508'
WHERE
  end_station_name = 'Central Park Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '510'
WHERE
  start_station_name = 'Spaulding Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '510'
WHERE
  end_station_name = 'Spaulding Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '522'
WHERE
  start_station_name = 'Bosworth Ave & Howard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '522'
WHERE
  end_station_name = 'Bosworth Ave & Howard St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '628'
WHERE
  start_station_name = 'Walsh Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '628'
WHERE
  end_station_name = 'Walsh Park';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '664'
WHERE
  start_station_name = 'Leavitt St & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '664'
WHERE
  end_station_name = 'Leavitt St & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '68'
WHERE
  start_station_name = 'Clinton St & Tilden St';
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '68'
WHERE
  end_station_name = 'Clinton St & Tilden St';


SELECT 
  DISTINCT a.start_station_name,
  a.start_station_id,
  b.name,
  b.id
FROM
  Cyclistic_.cyclistic_trips_2021 as a 
  FULL JOIN Cyclistic_.cyclistic_stations as b 
  ON a.start_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.start_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_name = 'Martin Luther King Dr & 29th St'
WHERE
  start_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_name = 'Martin Luther King Dr & 29th St'
WHERE  
  end_station_id = '237';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_name = 'California Ave & Francis Pl'
WHERE
  start_station_id = '259';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_name = 'California Ave & Francis Pl'
WHERE  
  end_station_id = '259';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_name = 'Broadway & Wilson Ave'
WHERE
  start_station_id = '293';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_name = 'Broadway & Wilson Ave'
WHERE  
  end_station_id = '293';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_name = 'Wood St & Taylor St'
WHERE
  start_station_id = '317';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_name = 'Wood St & Taylor St'
WHERE  
  end_station_id = '317';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '1521690221159885714'
WHERE
  start_station_name = 'N Hampden Ct & W Diversey Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '1521690221159885714'
WHERE
  end_station_name = 'N Hampden Ct & W Diversey Ave';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_name = 'Hampden Ct & Diversey Ave'
WHERE
  start_station_id = '1521690221159885714';
  
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_name = 'Hampden Ct & Diversey Ave'
WHERE  
  end_station_id = '1521690221159885714';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_id = '138'
WHERE
  start_station_name = 'Wentworth Ave & 24th St (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_id = '138'
WHERE
  end_station_name = 'Wentworth Ave & 24th St (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  start_station_name = 'Wentworth Ave & 24th St'
WHERE
  start_station_id = '138';
  
UPDATE
  `Cyclistic.cyclistic_trips_2021`
SET
  end_station_name = 'Wentworth Ave & 24th St'
WHERE  
  end_station_id = '138';




/*____________________________________________________________*/
/*  cyclistic_trips_2022 */
/*  Fixing data types and column order */
SELECT 
  CAST(trip_id as STRING) as trip_id,
  CAST(start_time	as DATETIME) as start_time,
  CAST(end_time as DATETIME) as end_time,
  CAST(start_station_id as STRING) as start_station_id,
  start_station_name,
  CAST(end_station_id as STRING) as end_station_id,
  end_station_name,
  user_type,
  start_lat,
  start_long,
  end_lat,
  end_long
FROM
  `Cyclistic.cyclistic_trips_2022`;



/*  Checking for name inconsistencies and correcting them like the corresponding name and id in cycliscit_stations */
SELECT 
  DISTINCT a.end_station_name,
  a.end_station_id,
  b.name,
  b.id
FROM
  `Cyclistic.cyclistic_trips_2022` as a 
  FULL JOIN `Cyclistic.cyclistic_stations` as b 
  ON a.end_station_name = b.name
WHERE
 a.end_station_id != b.id
ORDER BY
  b.id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '100'
WHERE
  start_station_name = 'Orleans St & Merchandise Mart Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '100'
WHERE
  end_station_name = 'Orleans St & Merchandise Mart Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '106'
WHERE
  start_station_name = 'State St & Pearson St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '106'
WHERE
  end_station_name = 'State St & Pearson St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '107'
WHERE
  start_station_name = 'Desplaines St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '107'
WHERE
  end_station_name = 'Desplaines St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '110'
WHERE
  start_station_name = 'Dearborn St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '110'
WHERE
  end_station_name = 'Dearborn St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '112'
WHERE
  start_station_name = 'Green St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '112'
WHERE
  end_station_name = 'Green St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '117'
WHERE
  start_station_name = 'Wilton Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '117'
WHERE
  end_station_name = 'Wilton Ave & Belmont Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '118'
WHERE
  start_station_name = 'Sedgwick St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '118'
WHERE
  end_station_name = 'Sedgwick St & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '123'
WHERE
  start_station_name = 'California Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '123'
WHERE
  end_station_name = 'California Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '125'
WHERE
  start_station_name = 'Rush St & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '125'
WHERE
  end_station_name = 'Rush St & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '130'
WHERE
  start_station_name = 'Damen Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '130'
WHERE
  end_station_name = 'Damen Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '133'
WHERE
  start_station_name = 'Kingsbury St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '133'
WHERE
  end_station_name = 'Kingsbury St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '134'
WHERE
  start_station_name = 'Peoria St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '134'
WHERE
  end_station_name = 'Peoria St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '136'
WHERE
  start_station_name = 'Racine Ave & 13th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '136'
WHERE
  end_station_name = 'Racine Ave & 13th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '141'
WHERE
  start_station_name = 'Clark St & Lincoln Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '141'
WHERE
  end_station_name = 'Clark St & Lincoln Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '142'
WHERE
  start_station_name = 'McClurg Ct & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '142'
WHERE
  end_station_name = 'McClurg Ct & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '1436495096608724634'
WHERE
  start_station_name = 'N Clark St & W Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '1436495096608724634'
WHERE
  end_station_name = 'N Clark St & W Elm St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '1436495109493626546'
WHERE
  start_station_name = 'N Green St & W Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '1436495109493626546'
WHERE
  end_station_name = 'N Green St & W Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '145'
WHERE
  start_station_name = 'Mies van der Rohe Way & Chestnut St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '145'
WHERE
  end_station_name = 'Mies van der Rohe Way & Chestnut St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '147'
WHERE
  start_station_name = 'Indiana Ave & 26th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '147'
WHERE
  end_station_name = 'Indiana Ave & 26th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '15'
WHERE
  start_station_name = 'Racine Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '15'
WHERE
  end_station_name = 'Racine Ave & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '1521686986436309688'
WHERE
  start_station_name = 'Damen Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '1521686986436309688'
WHERE
  end_station_name = 'Damen Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '156'
WHERE
  start_station_name = 'Clark St & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '156'
WHERE
  end_station_name = 'Clark St & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '158'
WHERE
  start_station_name = 'Milwaukee Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '158'
WHERE
  end_station_name = 'Milwaukee Ave & Wabansia Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '1582242302452717116'
WHERE
  start_station_name = 'Kedzie Ave & 52nd St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '1582242302452717116'
WHERE
  end_station_name = 'Kedzie Ave & 52nd St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '1582242306747684414'
WHERE
  start_station_name = 'St Louis Ave & Norman Bobbins Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '1582242306747684414'
WHERE
  end_station_name = 'St Louis Ave & Norman Bobbins Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '159'
WHERE
  start_station_name = 'Claremont Ave & Hirsch St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '159'
WHERE
  end_station_name = 'Claremont Ave & Hirsch St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '1594046443937813244'
WHERE
  start_station_name = 'Western Ave & Gunnison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '1594046443937813244'
WHERE
  end_station_name = 'Western Ave & Gunnison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '160'
WHERE
  start_station_name = 'Campbell Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '160'
WHERE
  end_station_name = 'Campbell Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '161'
WHERE
  start_station_name = 'Rush St & Superior St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '161'
WHERE
  end_station_name = 'Rush St & Superior St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '162'
WHERE
  start_station_name = 'Damen Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '162'
WHERE
  end_station_name = 'Damen Ave & Wellington Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '163'
WHERE
  start_station_name = 'Damen Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '163'
WHERE
  end_station_name = 'Damen Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '164'
WHERE
  start_station_name = 'Franklin St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '164'
WHERE
  end_station_name = 'Franklin St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '165'
WHERE
  start_station_name = 'Clark St & Grace St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '165'
WHERE
  end_station_name = 'Clark St & Grace St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '172'
WHERE
  start_station_name = 'Rush St & Cedar St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '172'
WHERE
  end_station_name = 'Rush St & Cedar St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '175'
WHERE
  start_station_name = 'Wells St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '175'
WHERE
  end_station_name = 'Wells St & Polk St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '18'
WHERE
  start_station_name = 'Wacker Dr & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '18'
WHERE
  end_station_name = 'Wacker Dr & Washington St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '181'
WHERE
  start_station_name = 'LaSalle St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '181'
WHERE
  end_station_name = 'LaSalle St & Illinois St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '184'
WHERE
  start_station_name = 'State St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '184'
WHERE
  end_station_name = 'State St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '185'
WHERE
  start_station_name = 'Stave St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '185'
WHERE
  end_station_name = 'Stave St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '186'
WHERE
  start_station_name = 'Ogden Ave & Race Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '186'
WHERE
  end_station_name = 'Ogden Ave & Race Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '192'
WHERE
  start_station_name = 'Canal St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '192'
WHERE
  end_station_name = 'Canal St & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '195'
WHERE
  start_station_name = 'Columbus Dr & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '195'
WHERE
  end_station_name = 'Columbus Dr & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '197'
WHERE
  start_station_name = 'Michigan Ave & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '197'
WHERE
  end_station_name = 'Michigan Ave & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '199'
WHERE
  start_station_name = 'Wabash Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '199'
WHERE
  end_station_name = 'Wabash Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20000'
WHERE
  start_station_name = 'Sheffield Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20000'
WHERE
  end_station_name = 'Sheffield Ave & Waveland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20021'
WHERE
  start_station_name = 'Wabash Ave & 9th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20021'
WHERE
  end_station_name = 'Wabash Ave & 9th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20031'
WHERE
  start_station_name = 'Wells St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20031'
WHERE
  end_station_name = 'Wells St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20050'
WHERE
  start_station_name = 'Clark St & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20050'
WHERE
  end_station_name = 'Clark St & Ida B Wells Dr';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20068'
WHERE
  start_station_name = 'Lincoln Ave & Sunnyside Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20068'
WHERE
  end_station_name = 'Lincoln Ave & Sunnyside Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20069'
WHERE
  start_station_name = 'Winthrop Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20069'
WHERE
  end_station_name = 'Winthrop Ave & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20071'
WHERE
  start_station_name = 'DuSable Lake Shore Dr & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20071'
WHERE
  end_station_name = 'DuSable Lake Shore Dr & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '20073'
WHERE
  start_station_name = 'Burling St & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '20073'
WHERE
  end_station_name = 'Burling St & Diversey Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '205'
WHERE
  start_station_name = 'Paulina St & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '205'
WHERE
  end_station_name = 'Paulina St & 18th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '206'
WHERE
  start_station_name = 'Halsted St & Archer Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '206'
WHERE
  end_station_name = 'Halsted St & Archer Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '210'
WHERE
  start_station_name = 'Ashland Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '210'
WHERE
  end_station_name = 'Ashland Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '211'
WHERE
  start_station_name = 'St. Clair St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '211'
WHERE
  end_station_name = 'St. Clair St & Erie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '214'
WHERE
  start_station_name = 'Damen Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '214'
WHERE
  end_station_name = 'Damen Ave & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '228'
WHERE
  start_station_name = 'Damen Ave & Melrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '228'
WHERE
  end_station_name = 'Damen Ave & Melrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '230'
WHERE
  start_station_name = 'Lincoln Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '230'
WHERE
  end_station_name = 'Lincoln Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '233'
WHERE
  start_station_name = 'Sangamon St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '233'
WHERE
  end_station_name = 'Sangamon St & Washington Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '239'
WHERE
  start_station_name = 'Western Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '239'
WHERE
  end_station_name = 'Western Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '24'
WHERE
  start_station_name = 'Fairbanks Ct & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '24'
WHERE
  end_station_name = 'Fairbanks Ct & Grand Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '242'
WHERE
  start_station_name = 'Damen Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '242'
WHERE
  end_station_name = 'Damen Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '246'
WHERE
  start_station_name = 'Ashland Ave & Belle Plaine Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '246'
WHERE
  end_station_name = 'Ashland Ave & Belle Plaine Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '247'
WHERE
  start_station_name = 'Shore Dr & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '247'
WHERE
  end_station_name = 'Shore Dr & 55th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '256'
WHERE
  start_station_name = 'Broadway & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '256'
WHERE
  end_station_name = 'Broadway & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '258'
WHERE
  start_station_name = 'Logan Blvd & Elston Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '258'
WHERE
  end_station_name = 'Logan Blvd & Elston Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '260'
WHERE
  start_station_name = 'Kedzie Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '260'
WHERE
  end_station_name = 'Kedzie Ave & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '262'
WHERE
  start_station_name = 'Halsted St & 37th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '262'
WHERE
  end_station_name = 'Halsted St & 37th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '276'
WHERE
  start_station_name = 'California Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '276'
WHERE
  end_station_name = 'California Ave & North Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '278'
WHERE
  start_station_name = 'Wallace St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '278'
WHERE
  end_station_name = 'Wallace St & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '280'
WHERE
  start_station_name = 'Morgan St & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '280'
WHERE
  end_station_name = 'Morgan St & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '287'
WHERE
  start_station_name = 'Franklin St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '287'
WHERE
  end_station_name = 'Franklin St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '289'
WHERE
  start_station_name = 'Wells St & Concord Ln';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '289'
WHERE
  end_station_name = 'Wells St & Concord Ln';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '290'
WHERE
  start_station_name = 'Kedzie Ave & Palmer Ct';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '290'
WHERE
  end_station_name = 'Kedzie Ave & Palmer Ct';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '297'
WHERE
  start_station_name = 'Paulina St & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '297'
WHERE
  end_station_name = 'Paulina St & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '3'
WHERE
  start_station_name = 'Shedd Aquarium';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '3'
WHERE
  end_station_name = 'Shedd Aquarium';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '300'
WHERE
  start_station_name = 'Broadway & Barry Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '300'
WHERE
  end_station_name = 'Broadway & Barry Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '307'
WHERE
  start_station_name = 'Southport Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '307'
WHERE
  end_station_name = 'Southport Ave & Clybourn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '308'
WHERE
  start_station_name = 'Seeley Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '308'
WHERE
  end_station_name = 'Seeley Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '309'
WHERE
  start_station_name = 'Leavitt St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '309'
WHERE
  end_station_name = 'Leavitt St & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '312'
WHERE
  start_station_name = 'Clarendon Ave & Gordon Ter';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '312'
WHERE
  end_station_name = 'Clarendon Ave & Gordon Ter';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '314'
WHERE
  start_station_name = 'Ravenswood Ave & Berteau Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '314'
WHERE
  end_station_name = 'Ravenswood Ave & Berteau Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '32'
WHERE
  start_station_name = 'Racine Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '32'
WHERE
  end_station_name = 'Racine Ave & Congress Pkwy';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '320'
WHERE
  start_station_name = 'Loomis St & Lexington St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '320'
WHERE
  end_station_name = 'Loomis St & Lexington St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '323'
WHERE
  start_station_name = 'Sheridan Rd & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '323'
WHERE
  end_station_name = 'Sheridan Rd & Lawrence Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '325'
WHERE
  start_station_name = 'Clark St & Winnemac Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '325'
WHERE
  end_station_name = 'Clark St & Winnemac Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '33'
WHERE
  start_station_name = 'State St & Van Buren St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '33'
WHERE
  end_station_name = 'State St & Van Buren St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '330'
WHERE
  start_station_name = 'Lincoln Ave & Addison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '330'
WHERE
  end_station_name = 'Lincoln Ave & Addison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '339'
WHERE
  start_station_name = 'Emerald Ave & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '339'
WHERE
  end_station_name = 'Emerald Ave & 31st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '340'
WHERE
  start_station_name = 'Clark St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '340'
WHERE
  end_station_name = 'Clark St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '345'
WHERE
  start_station_name = 'Lake Park Ave & 56th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '345'
WHERE
  end_station_name = 'Lake Park Ave & 56th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '348'
WHERE
  start_station_name = 'California Ave & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '348'
WHERE
  end_station_name = 'California Ave & 21st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '349'
WHERE
  start_station_name = 'Halsted St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '349'
WHERE
  end_station_name = 'Halsted St & Wrightwood Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '376'
WHERE
  start_station_name = 'Artesian Ave & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '376'
WHERE
  end_station_name = 'Artesian Ave & Hubbard St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '38'
WHERE
  start_station_name = 'Clark St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '38'
WHERE
  end_station_name = 'Clark St & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '385'
WHERE
  start_station_name = 'Princeton Ave & Garfield Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '385'
WHERE
  end_station_name = 'Princeton Ave & Garfield Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '39'
WHERE
  start_station_name = 'Wabash Ave & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '39'
WHERE
  end_station_name = 'Wabash Ave & Adams St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '390'
WHERE
  start_station_name = 'Wentworth Ave & 63rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '390'
WHERE
  end_station_name = 'Wentworth Ave & 63rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '405'
WHERE
  start_station_name = 'Wentworth Ave & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '405'
WHERE
  end_station_name = 'Wentworth Ave & 35th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '413'
WHERE
  start_station_name = 'Woodlawn Ave & Lake Park Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '413'
WHERE
  end_station_name = 'Woodlawn Ave & Lake Park Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '415'
WHERE
  start_station_name = 'Calumet Ave & 51st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '415'
WHERE
  end_station_name = 'Calumet Ave & 51st St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '418'
WHERE
  start_station_name = 'Ellis Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '418'
WHERE
  end_station_name = 'Ellis Ave & 53rd St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '423'
WHERE
  start_station_name = 'University Ave & 57th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '423'
WHERE
  end_station_name = 'University Ave & 57th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '426'
WHERE
  start_station_name = 'Ellis Ave & 60th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '426'
WHERE
  end_station_name = 'Ellis Ave & 60th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '433'
WHERE
  start_station_name = 'Kedzie Ave & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '433'
WHERE
  end_station_name = 'Kedzie Ave & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '44'
WHERE
  start_station_name = 'State St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '44'
WHERE
  end_station_name = 'State St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '448'
WHERE
  start_station_name = 'Warren Park East';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '448'
WHERE
  end_station_name = 'Warren Park East';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '458'
WHERE
  start_station_name = 'Broadway & Thorndale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '458'
WHERE
  end_station_name = 'Broadway & Thorndale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '459'
WHERE
  start_station_name = 'Lakefront Trail & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '459'
WHERE
  end_station_name = 'Lakefront Trail & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '461'
WHERE
  start_station_name = 'Broadway & Ridge Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '461'
WHERE
  end_station_name = 'Broadway & Ridge Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '463'
WHERE
  start_station_name = 'Clark St & Berwyn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '463'
WHERE
  end_station_name = 'Clark St & Berwyn Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '468'
WHERE
  start_station_name = 'Budlong Woods Library';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '468'
WHERE
  end_station_name = 'Budlong Woods Library';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '472'
WHERE
  start_station_name = 'Lincoln Ave & Winona St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '472'
WHERE
  end_station_name = 'Lincoln Ave & Winona St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '476'
WHERE
  start_station_name = 'Kedzie Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '476'
WHERE
  end_station_name = 'Kedzie Ave & Leland Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '48'
WHERE
  start_station_name = 'Larrabee St & Kingsbury St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '48'
WHERE
  end_station_name = 'Larrabee St & Kingsbury St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '482'
WHERE
  start_station_name = 'Campbell Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '482'
WHERE
  end_station_name = 'Campbell Ave & Montrose Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '483'
WHERE
  start_station_name = 'Avondale Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '483'
WHERE
  end_station_name = 'Avondale Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '485'
WHERE
  start_station_name = 'Sawyer Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '485'
WHERE
  end_station_name = 'Sawyer Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '486'
WHERE
  start_station_name = 'Oakley Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '486'
WHERE
  end_station_name = 'Oakley Ave & Irving Park Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '487'
WHERE
  start_station_name = 'California Ave & Byron St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '487'
WHERE
  end_station_name = 'California Ave & Byron St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '490'
WHERE
  start_station_name = 'Troy St & Elston Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '490'
WHERE
  end_station_name = 'Troy St & Elston Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '493'
WHERE
  start_station_name = 'Western Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '493'
WHERE
  end_station_name = 'Western Ave & Roscoe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '494'
WHERE
  start_station_name = 'Kedzie Ave & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '494'
WHERE
  end_station_name = 'Kedzie Ave & Bryn Mawr Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '498'
WHERE
  start_station_name = 'California Ave & Fletcher St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '498'
WHERE
  end_station_name = 'California Ave & Fletcher St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '499'
WHERE
  start_station_name = 'Kosciuszko Park';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '499'
WHERE
  end_station_name = 'Kosciuszko Park';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '5'
WHERE
  start_station_name = 'State St & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '5'
WHERE
  end_station_name = 'State St & Harrison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '507'
WHERE
  start_station_name = 'Humboldt Blvd & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '507'
WHERE
  end_station_name = 'Humboldt Blvd & Armitage Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '51'
WHERE
  start_station_name = 'Clark St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '51'
WHERE
  end_station_name = 'Clark St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '510'
WHERE
  start_station_name = 'Spaulding Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '510'
WHERE
  end_station_name = 'Spaulding Ave & Division St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '511'
WHERE
  start_station_name = 'Albany Ave & Bloomingdale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '511'
WHERE
  end_station_name = 'Albany Ave & Bloomingdale Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '52'
WHERE
  start_station_name = 'Michigan Ave & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '52'
WHERE
  end_station_name = 'Michigan Ave & Lake St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '526'
WHERE
  start_station_name = 'Oakley Ave & Touhy Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '526'
WHERE
  end_station_name = 'Oakley Ave & Touhy Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '54'
WHERE
  start_station_name = 'Ogden Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '54'
WHERE
  end_station_name = 'Ogden Ave & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '56'
WHERE
  start_station_name = 'Desplaines St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '56'
WHERE
  end_station_name = 'Desplaines St & Kinzie St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '603'
WHERE
  start_station_name = 'Chicago Ave & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '603'
WHERE
  end_station_name = 'Chicago Ave & Sheridan Rd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '61'
WHERE
  start_station_name = 'Wood St & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '61'
WHERE
  end_station_name = 'Wood St & Milwaukee Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '628'
WHERE
  start_station_name = 'Walsh Park';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '628'
WHERE
  end_station_name = 'Walsh Park';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '659'
WHERE
  start_station_name = 'Leavitt St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '659'
WHERE
  end_station_name = 'Leavitt St & Chicago Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '666'
WHERE
  start_station_name = 'Cherry Ave & Blackhawk St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '666'
WHERE
  end_station_name = 'Cherry Ave & Blackhawk St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '67'
WHERE
  start_station_name = 'Sheffield Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '67'
WHERE
  end_station_name = 'Sheffield Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '68'
WHERE
  start_station_name = 'Clinton St & Tilden St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '68'
WHERE
  end_station_name = 'Clinton St & Tilden St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '690'
WHERE
  start_station_name = 'State St & 95th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '690'
WHERE
  end_station_name = 'State St & 95th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '697'
WHERE
  start_station_name = 'Oglesby Ave & 100th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '697'
WHERE
  end_station_name = 'Oglesby Ave & 100th St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '7'
WHERE
  start_station_name = 'Field Blvd & South Water St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '7'
WHERE
  end_station_name = 'Field Blvd & South Water St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '73'
WHERE
  start_station_name = 'Jefferson St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '73'
WHERE
  end_station_name = 'Jefferson St & Monroe St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '75'
WHERE
  start_station_name = 'Canal St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '75'
WHERE
  end_station_name = 'Canal St & Jackson Blvd';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '77'
WHERE
  start_station_name = 'Clinton St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '77'
WHERE
  end_station_name = 'Clinton St & Madison St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '81'
WHERE
  start_station_name = 'Daley Center Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '81'
WHERE
  end_station_name = 'Daley Center Plaza';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '87'
WHERE
  start_station_name = 'Racine Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '87'
WHERE
  end_station_name = 'Racine Ave & Fullerton Ave';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '92'
WHERE
  start_station_name = 'Carpenter St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '92'
WHERE
  end_station_name = 'Carpenter St & Huron St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '96'
WHERE
  start_station_name = 'Desplaines St & Randolph St';
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '96'
WHERE
  end_station_name = 'Desplaines St & Randolph St';


SELECT 
  DISTINCT a.end_station_name,
  a.end_station_id,
  b.name,
  b.id
FROM
  Cyclistic_.cyclistic_trips_2022 as a 
  FULL JOIN Cyclistic_.cyclistic_stations as b 
  ON a.end_station_name = b.name
WHERE
  b.name IS NULL
ORDER BY
  a.end_station_id ASC;

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '259'
WHERE
  start_station_name = 'California Ave & Francis Pl (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '259'
WHERE
  end_station_name = 'California Ave & Francis Pl (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_name = 'California Ave & Francis Pl'
WHERE
  start_station_id = '259';
  
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_name = 'California Ave & Francis Pl'
WHERE  
  end_station_id = '259';

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_id = '317'
WHERE
  start_station_name = 'Wood St & Taylor St (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_id = '317'
WHERE
  end_station_name = 'Wood St & Taylor St (Temp)';

UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  start_station_name = 'Wood St & Taylor St'
WHERE
  start_station_id = '317';
  
UPDATE
  `Cyclistic.cyclistic_trips_2022`
SET
  end_station_name = 'Wood St & Taylor St'
WHERE  
  end_station_id = '317';




/*____________________________________________________________*/
/*  cyclistic_stations_2013 */
/*  Fixing data types and column order */
SELECT 
  CAST(id as STRING) as id,
  name,
  latitude,
  longitude,
  dp_capacity,
  active_since
FROM 
  `absolute-pulsar-366718.Cyclistic.cyclistic_stations_2013`;



/*____________________________________________________________*/
/*  cyclistic_stations_2014 */
/*  Fixing data types and column order */
SELECT 
  CAST(id as STRING) as id,
  name,
  latitude,
  longitude,
  dp_capacity,
  active_since
FROM 
  `absolute-pulsar-366718.Cyclistic.cyclistic_stations_2014`;



/*____________________________________________________________*/
/*  cyclistic_stations_2015 */
/*  Fixing data types and column order */
SELECT 
  CAST(id as STRING) as id,
  name,
  latitude,
  longitude,
  dp_capacity
FROM 
  `absolute-pulsar-366718.Cyclistic.cyclistic_stations_2015`;



/*____________________________________________________________*/
/*  cyclistic_stations_2016 */
/*  Fixing data types and column order */
SELECT 
  CAST(id as STRING) as id,
  name,
  latitude,
  longitude,
  dp_capacity,
  active_since
FROM 
  `absolute-pulsar-366718.Cyclistic.cyclistic_stations_2016`;


/*____________________________________________________________*/
/*  cyclistic_stations_2017 */
/*  Fixing data types and column order */
SELECT 
  CAST(id as STRING) as id,
  name,
  latitude,
  longitude,
  dp_capacity,
  active_since,
  city
FROM 
  `Cyclistic_.cyclistic_stations_2017`;


/*____________________________________________________________*/
/*  cyclistic_stations - after uniting tables */
/*  Checking for duplicated id with different names for stations */
SELECT 
  DISTINCT name,
  id
FROM 
  `Cyclistic.cyclistic_stations`
ORDER BY
  id ASC;

/*  Adding IDs to names with less occurrence  */
UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20000'
WHERE
  name = 'Sheffield Ave & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20001'
WHERE
  name = 'State St & Erie St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20002'
WHERE
  name = 'Racine Ave & 19th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20003'
WHERE
  name = 'Wood St & North Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20004'
WHERE
  name = 'Paulina St & Diversey Pkwy';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20005'
WHERE
  name = 'Clark St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20006'
WHERE
  name = 'Honore St & Division St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20007'
WHERE
  name = 'State St & Wacker Dr';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20008'
WHERE
  name = 'Cityfront Plaza & N Water St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20009'
WHERE
  name = 'Halsted St & Madison St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20010'
WHERE
  name = 'Michigan Ave & Balbo Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20011'
WHERE
  name = 'Wells St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20012'
WHERE
  name = 'Orleans St & Ohio St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20014'
WHERE
  name = 'Pine Grove Ave & Addison St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20015'
WHERE
  name = 'Michigan Ave & 16th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20016'
WHERE
  name = 'Wood St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20017'
WHERE
  name = 'Franklin St & Hubbard St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20018'
WHERE
  name = 'Halsted St & Waveland Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20019'
WHERE
  name = 'Lincoln Ave & Eastwood Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20020'
WHERE
  name = 'Leavitt St & Hirsch St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20021'
WHERE
  name = 'Wabash Ave & 9th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20022'
WHERE
  name = 'Wolcott Ave & Lawrence Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20023'
WHERE
  name = 'Streeter Dr & Illinois St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20024'
WHERE
  name = 'California Ave & Augusta Blvd';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20025'
WHERE
  name = 'Princeton Ave & 31st St';

UPDATE
  `yclistic.cyclistic_stations`
SET
  id = '20026'
WHERE
  name = 'Union Ave & Root St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20027'
WHERE
  name = 'Princeton Ave & China Pl';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20028'
WHERE
  name = 'Kedzie Ave & Montrose Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20029'
WHERE
  name = 'Keeler Ave & Irving Park Rd';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20030'
WHERE
  name = 'Oakley Ave & Roscoe St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20031'
WHERE
  name = 'Wells St & Huron St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20032'
WHERE
  name = 'LaSalle (Wells) St & Huron St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20033'
WHERE
  name = 'Austin Blvd & Madison St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20034'
WHERE
  name = 'Seeley Ave & Garfield Blvd';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20035'
WHERE
  name = 'Damen Ave & 59th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20036'
WHERE
  name = 'Eberhart (Vernon) Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20037'
WHERE
  name = 'Chappel Ave & 79th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20038'
WHERE
  name = 'Ashland Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20039'
WHERE
  name = 'Phillips Ave & 83rd St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20040'
WHERE
  name = 'State St & 16th St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20041'
WHERE
  name = 'Aberdeen St & Monroe St' OR name = 'Aberdeen St & Madison (Monroe) St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20042'
WHERE
  name = 'Milwaukee Ave & Grand Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20043'
WHERE
  name = 'Green St & Milwaukee Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20044'
WHERE
  name = 'Racine Ave & Randolph St';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20045'
WHERE
  name = 'Lincoln Ave & Armitage Ave';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  id = '20046'
WHERE
  name = 'Franklin St & Arcade Pl';


/*  Correcting wrong names */

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Clinton St & Polk St'
WHERE
  id = '103';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = '900 W Harrison St'
WHERE
  id = '109';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Ogden Ave & Congress Pkwy'
WHERE
  id = '122';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Martin Luther King Dr & Oakwood Blvd'
WHERE
  id = '179';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Loomis St & Taylor St'
WHERE
  id = '19';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Canal St & Monroe St'
WHERE
  id = '191';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'MLK Jr Dr & 47th St'
WHERE
  id = '200';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'St. Clair St & Erie St'
WHERE
  id = '211';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Damen Ave & Cortland St'
WHERE
  id = '219';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Orleans St & Elm St'
WHERE
  id = '23';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Martin Luther King Dr & 29th St'
WHERE
  id = '237';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Ravenswood Ave & Montrose Ave'
WHERE
  id = '238';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Shore Dr & 55th St'
WHERE
  id = '247';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Wallace St & 35th St'
WHERE
  id = '278';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Halsted St & 35th St'
WHERE
  id = '279';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Halsted St & Blackhawk St'
WHERE
  id = '331';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Cornell Ave & Hyde Park Blvd'
WHERE
  id = '417';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'MLK Jr Dr & 56th St'
WHERE
  id = '421';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Fairfield Ave & Roosevelt Rd'
WHERE
  id = '436';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Washtenaw Ave & 15th St'
WHERE
  id = '437';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Albany Ave & Montrose Ave'
WHERE
  id = '480';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Pulaski Rd & Eddy St'
WHERE
  id = '488';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Dusable Harbor'
WHERE
  id = '6';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Wisconsin Ave & Madison St'
WHERE
  id = '613';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Museum Campus'
WHERE
  id = '97';

UPDATE
  `Cyclistic.cyclistic_stations`
SET
  name = 'Aberdeen St & Monroe St'
WHERE
  id = '20041';


