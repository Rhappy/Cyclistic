/* All queries using '*' were confirmed to have matching names and order of columns */

/* 2013 was already one single table - trips */

/* Uniting 2014 trip tables using UNION ALL */
/* Created - cyclistic_trips_2014 */
SELECT
  a.*
FROM
  `Cyclistic.Divvy_Trips_2014-Q3-07` AS a
UNION ALL
SELECT
  b.*
FROM  
  `Cyclistic.Divvy_Trips_2014-Q3-0809` AS b
UNION ALL
SELECT
  c.*
FROM
  `Cyclistic.Divvy_Trips_2014-Q4` AS c
UNION ALL
SELECT
  d.*
FROM
  `Cyclistic.Divvy_Trips_2014_Q1Q2` AS d;



/* Uniting 2015 trip tables using UNION ALL */
/* Created - cyclistic_trips_2015 */
SELECT
  a.*
FROM
  `Cyclistic.Divvy_Trips_2015-Q1` AS a

UNION ALL

SELECT
  b.*
FROM  
  `Cyclistic.Divvy_Trips_2015-Q2` AS b

UNION ALL

SELECT
  c.*
FROM
  `Cyclistic.Divvy_Trips_2015_Q4` AS c

UNION ALL

SELECT
  d.*
FROM
  `Cyclistic.Divvy_Trips_2015_07` AS d

UNION ALL

SELECT
  e.*
FROM
  `Cyclistic.Divvy_Trips_2015_08` AS e

UNION ALL

SELECT
  f.*
FROM
  `Cyclistic.Divvy_Trips_2015_09` AS f;



/* Uniting 2016 trip tables using UNION ALL */
/* Created - cyclistic_trips_2016 */
SELECT
  a.*
FROM
  `Cyclistic.Divvy_Trips_2016_Q1` AS a

UNION ALL

SELECT
  b.*
FROM  
  `Cyclistic.Divvy_Trips_2016_04` AS b

UNION ALL

SELECT
  c.*
FROM
  `Cyclistic.Divvy_Trips_2016_05` AS c

UNION ALL

SELECT
  d.*
FROM
  `Cyclistic.Divvy_Trips_2016_06` AS d

UNION ALL

SELECT
  e.*
FROM
  `Cyclistic.Divvy_Trips_2016_Q3` AS e

UNION ALL

SELECT
  f.*
FROM
  `Cyclistic.Divvy_Trips_2016_Q4` AS f;



/* Uniting 2017 trip tables using UNION ALL */
/* Created - cyclistic_trips_2017 */
SELECT
  a.*
FROM
  `Cyclistic.Divvy_Trips_2017_Q1` AS a

UNION ALL

SELECT
  b.*
FROM  
  `Cyclistic.Divvy_Trips_2017_Q2` AS b

UNION ALL

SELECT
  c.*
FROM
  `Cyclistic.Divvy_Trips_2017_Q3` AS c

UNION ALL

SELECT
  d.*
FROM
  `Cyclistic.Divvy_Trips_2017_Q4` AS d;



/* Uniting 2018 trip tables using UNION ALL */
/* Created - cyclistic_trips_2018 */
SELECT
  a.*
FROM
  `Cyclistic.Divvy_Trips_2018_Q1` AS a

UNION ALL

SELECT
  b.*
FROM  
  `Cyclistic.Divvy_Trips_2018_Q2` AS b

UNION ALL

SELECT
  c.*
FROM
  `Cyclistic.Divvy_Trips_2018_Q3` AS c

UNION ALL

SELECT
  d.*
FROM
  `Cyclistic.Divvy_Trips_2018_Q4` AS d;



/* Uniting 2019 trip tables using UNION ALL */
/* Created - cyclistic_trips_2019 */
SELECT
  a.*
FROM
  `Cyclistic.Divvy_Trips_2019_Q1` AS a

UNION ALL

SELECT
  b.*
FROM  
  `Cyclistic.Divvy_Trips_2019_Q2` AS b

UNION ALL

SELECT
  c.*
FROM
  `Cyclistic.Divvy_Trips_2019_Q3` AS c

UNION ALL

SELECT
  d.*
FROM
  `Cyclistic.Divvy_Trips_2019_Q4` AS d;



*/ Uniting 2020 trip tables using UNION ALL */
*/ Needed CAST as a new format for station ids started being used */
*/ Created - cyclistic_trips_2020 */
SELECT 
  a.trip_id,
  a.user_type,
  a.rideable_type,
  CAST(a.start_time as DATETIME) as start_time,
  CAST(a.end_time as DATETIME) as end_time,
  CAST(a.start_station_id AS STRING) as start_station_id,
  a.start_station_name,
  CAST(a.end_station_id AS STRING) as end_station_id,
  a.end_station_name,
  a.start_lat,
  a.start_long,
  a.end_lat,
  a.end_long
FROM
  `cyclistic.Divvy_Trips_2020_Q1` as a

UNION ALL

SELECT 
  b.trip_id,
  b.user_type,
  b.rideable_type,
  CAST(b.start_time as DATETIME) as start_time,
  CAST(b.end_time as DATETIME) as end_time,
  CAST(b.start_station_id AS STRING) as start_station_id,
  b.start_station_name,
  CAST(b.end_station_id AS STRING) as end_station_id,
  b.end_station_name,
  b.start_lat,
  b.start_long,
  b.end_lat,
  b.end_long
FROM
  `cyclistic.202004-divvy-tripdata` as b

UNION ALL

SELECT 
  c.trip_id,
  c.user_type,
  c.rideable_type,
  CAST(c.start_time as DATETIME) as start_time,
  CAST(c.end_time as DATETIME) as end_time,
  CAST(c.start_station_id AS STRING) as start_station_id,
  c.start_station_name,
  CAST(c.end_station_id AS STRING) as end_station_id,
  c.end_station_name,
  c.start_lat,
  c.start_long,
  c.end_lat,
  c.end_long
FROM
  `cyclistic.202005-divvy-tripdata` as c

UNION ALL

SELECT 
  d.trip_id,
  d.user_type,
  d.rideable_type,
  CAST(d.start_time as DATETIME) as start_time,
  CAST(d.end_time as DATETIME) as end_time,
  CAST(d.start_station_id AS STRING) as start_station_id,
  d.start_station_name,
  CAST(d.end_station_id AS STRING) as end_station_id,
  d.end_station_name,
  d.start_lat,
  d.start_long,
  d.end_lat,
  d.end_long
FROM
  `cyclistic.202006-divvy-tripdata` as d

UNION ALL

SELECT 
  e.trip_id,
  e.user_type,
  e.rideable_type,
  CAST(e.start_time as DATETIME) as start_time,
  CAST(e.end_time as DATETIME) as end_time,
  CAST(e.start_station_id AS STRING) as start_station_id,
  e.start_station_name,
  CAST(e.end_station_id AS STRING) as end_station_id,
  e.end_station_name,
  e.start_lat,
  e.start_long,
  e.end_lat,
  e.end_long
FROM
  `cyclistic.202007-divvy-tripdata` as e

UNION ALL

SELECT 
  f.trip_id,
  f.user_type,
  f.rideable_type,
  CAST(f.start_time as DATETIME) as start_time,
  CAST(f.end_time as DATETIME) as end_time,
  CAST(f.start_station_id AS STRING) as start_station_id,
  f.start_station_name,
  CAST(f.end_station_id AS STRING) as end_station_id,
  f.end_station_name,
  f.start_lat,
  f.start_long,
  f.end_lat,
  f.end_long
FROM
  `cyclistic.202008-divvy-tripdata` as f

UNION ALL

SELECT 
  g.trip_id,
  g.user_type,
  g.rideable_type,
  CAST(g.start_time as DATETIME) as start_time,
  CAST(g.end_time as DATETIME) as end_time,
  CAST(g.start_station_id AS STRING) as start_station_id,
  g.start_station_name,
  CAST(g.end_station_id AS STRING) as end_station_id,
  g.end_station_name,
  g.start_lat,
  g.start_long,
  g.end_lat,
  g.end_long
FROM
  `cyclistic.202009-divvy-tripdata` as g

UNION ALL

SELECT 
  h.trip_id,
  h.user_type,
  h.rideable_type,
  CAST(h.start_time as DATETIME) as start_time,
  CAST(h.end_time as DATETIME) as end_time,
  CAST(h.start_station_id AS STRING) as start_station_id,
  h.start_station_name,
  CAST(h.end_station_id AS STRING) as end_station_id,
  h.end_station_name,
  h.start_lat,
  h.start_long,
  h.end_lat,
  h.end_long
FROM
  `cyclistic.202010-divvy-tripdata` as h

UNION ALL

SELECT 
  i.trip_id,
  i.user_type,
  i.rideable_type,
  CAST(i.start_time as DATETIME) as start_time,
  CAST(i.end_time as DATETIME) as end_time,
  CAST(i.start_station_id AS STRING) as start_station_id,
  i.start_station_name,
  CAST(i.end_station_id AS STRING) as end_station_id,
  i.end_station_name,
  i.start_lat,
  i.start_long,
  i.end_lat,
  i.end_long
FROM
  `cyclistic.202011-divvy-tripdata` as i

UNION ALL

SELECT 
  j.trip_id,
  j.user_type,
  j.rideable_type,
  CAST(j.start_time as DATETIME) as start_time,
  CAST(j.end_time as DATETIME) as end_time,
  CAST(j.start_station_id AS STRING) as start_station_id,
  j.start_station_name,
  CAST(j.end_station_id AS STRING) as end_station_id,
  j.end_station_name,
  j.start_lat,
  j.start_long,
  j.end_lat,
  j.end_long
FROM
  `cyclistic.202012-divvy-tripdata` as j;



*/ Uniting 2021 trip tables using UNION ALL */
*/ Created - cyclistic_trips_2021 */
SELECT 
  a.trip_id,
  a.user_type,
  a.rideable_type,
  CAST(a.start_time as DATETIME) as start_time,
  CAST(a.end_time as DATETIME) as end_time,
  CAST(a.start_station_id AS STRING) as start_station_id,
  a.start_station_name,
  CAST(a.end_station_id AS STRING) as end_station_id,
  a.end_station_name,
  a.start_lat,
  a.start_long,
  a.end_lat,
  a.end_long
FROM
  `cyclistic.202101-divvy-tripdata` as a

UNION ALL

SELECT 
  b.trip_id,
  b.user_type,
  b.rideable_type,
  CAST(b.start_time as DATETIME) as start_time,
  CAST(b.end_time as DATETIME) as end_time,
  CAST(b.start_station_id AS STRING) as start_station_id,
  b.start_station_name,
  CAST(b.end_station_id AS STRING) as end_station_id,
  b.end_station_name,
  b.start_lat,
  b.start_long,
  b.end_lat,
  b.end_long
FROM
  `cyclistic.202102-divvy-tripdata` as b

UNION ALL

SELECT 
  c.trip_id,
  c.user_type,
  c.rideable_type,
  CAST(c.start_time as DATETIME) as start_time,
  CAST(c.end_time as DATETIME) as end_time,
  CAST(c.start_station_id AS STRING) as start_station_id,
  c.start_station_name,
  CAST(c.end_station_id AS STRING) as end_station_id,
  c.end_station_name,
  c.start_lat,
  c.start_long,
  c.end_lat,
  c.end_long
FROM
  `cyclistic.202103-divvy-tripdata` as c

UNION ALL

SELECT 
  d.trip_id,
  d.user_type,
  d.rideable_type,
  CAST(d.start_time as DATETIME) as start_time,
  CAST(d.end_time as DATETIME) as end_time,
  CAST(d.start_station_id AS STRING) as start_station_id,
  d.start_station_name,
  CAST(d.end_station_id AS STRING) as end_station_id,
  d.end_station_name,
  d.start_lat,
  d.start_long,
  d.end_lat,
  d.end_long
FROM
  `cyclistic.202104-divvy-tripdata` as d

UNION ALL

SELECT 
  e.trip_id,
  e.user_type,
  e.rideable_type,
  CAST(e.start_time as DATETIME) as start_time,
  CAST(e.end_time as DATETIME) as end_time,
  CAST(e.start_station_id AS STRING) as start_station_id,
  e.start_station_name,
  CAST(e.end_station_id AS STRING) as end_station_id,
  e.end_station_name,
  e.start_lat,
  e.start_long,
  e.end_lat,
  e.end_long
FROM
  `cyclistic.202105-divvy-tripdata` as e

UNION ALL

SELECT 
  f.trip_id,
  f.user_type,
  f.rideable_type,
  CAST(f.start_time as DATETIME) as start_time,
  CAST(f.end_time as DATETIME) as end_time,
  CAST(f.start_station_id AS STRING) as start_station_id,
  f.start_station_name,
  CAST(f.end_station_id AS STRING) as end_station_id,
  f.end_station_name,
  f.start_lat,
  f.start_long,
  f.end_lat,
  f.end_long
FROM
  `cyclistic.202106-divvy-tripdata` as f

UNION ALL

SELECT 
  g.trip_id,
  g.user_type,
  g.rideable_type,
  CAST(g.start_time as DATETIME) as start_time,
  CAST(g.end_time as DATETIME) as end_time,
  CAST(g.start_station_id AS STRING) as start_station_id,
  g.start_station_name,
  CAST(g.end_station_id AS STRING) as end_station_id,
  g.end_station_name,
  g.start_lat,
  g.start_long,
  g.end_lat,
  g.end_long
FROM
  `cyclistic.202107-divvy-tripdata` as g

UNION ALL

SELECT 
  h.trip_id,
  h.user_type,
  h.rideable_type,
  CAST(h.start_time as DATETIME) as start_time,
  CAST(h.end_time as DATETIME) as end_time,
  CAST(h.start_station_id AS STRING) as start_station_id,
  h.start_station_name,
  CAST(h.end_station_id AS STRING) as end_station_id,
  h.end_station_name,
  h.start_lat,
  h.start_long,
  h.end_lat,
  h.end_long
FROM
  `cyclistic.202108-divvy-tripdata` as h

UNION ALL

SELECT 
  i.trip_id,
  i.user_type,
  i.rideable_type,
  CAST(i.start_time as DATETIME) as start_time,
  CAST(i.end_time as DATETIME) as end_time,
  CAST(i.start_station_id AS STRING) as start_station_id,
  i.start_station_name,
  CAST(i.end_station_id AS STRING) as end_station_id,
  i.end_station_name,
  i.start_lat,
  i.start_long,
  i.end_lat,
  i.end_long
FROM
  `cyclistic.202109-divvy-tripdata` as i

UNION ALL

SELECT 
  j.trip_id,
  j.user_type,
  j.rideable_type,
  CAST(j.start_time as DATETIME) as start_time,
  CAST(j.end_time as DATETIME) as end_time,
  CAST(j.start_station_id AS STRING) as start_station_id,
  j.start_station_name,
  CAST(j.end_station_id AS STRING) as end_station_id,
  j.end_station_name,
  j.start_lat,
  j.start_long,
  j.end_lat,
  j.end_long
FROM
  `cyclistic.202110-divvy-tripdata` as j;

UNION ALL

SELECT 
  k.trip_id,
  k.user_type,
  k.rideable_type,
  CAST(k.start_time as DATETIME) as start_time,
  CAST(k.end_time as DATETIME) as end_time,
  CAST(k.start_station_id AS STRING) as start_station_id,
  k.start_station_name,
  CAST(k.end_station_id AS STRING) as end_station_id,
  k.end_station_name,
  k.start_lat,
  k.start_long,
  k.end_lat,
  k.end_long
FROM
  `cyclistic.202111-divvy-tripdata` as k;

UNION ALL

SELECT 
  l.trip_id,
  l.user_type,
  l.rideable_type,
  CAST(l.start_time as DATETIME) as start_time,
  CAST(l.end_time as DATETIME) as end_time,
  CAST(l.start_station_id AS STRING) as start_station_id,
  l.start_station_name,
  CAST(l.end_station_id AS STRING) as end_station_id,
  l.end_station_name,
  l.start_lat,
  l.start_long,
  l.end_lat,
  l.end_long
FROM
  `cyclistic.202112-divvy-tripdata` as l;



/* Uniting 2022 trip tables using UNION ALL */
/* Created - cyclistic_trips_2022 */
SELECT 
  a.trip_id,
  a.user_type,
  a.rideable_type,
  CAST(a.start_time as DATETIME) as start_time,
  CAST(a.end_time as DATETIME) as end_time,
  CAST(a.start_station_id AS STRING) as start_station_id,
  a.start_station_name,
  CAST(a.end_station_id AS STRING) as end_station_id,
  a.end_station_name,
  a.start_lat,
  a.start_long,
  a.end_lat,
  a.end_long
FROM
  `cyclistic.202201-divvy-tripdata` as a

UNION ALL

SELECT 
  b.trip_id,
  b.user_type,
  b.rideable_type,
  CAST(b.start_time as DATETIME) as start_time,
  CAST(b.end_time as DATETIME) as end_time,
  CAST(b.start_station_id AS STRING) as start_station_id,
  b.start_station_name,
  CAST(b.end_station_id AS STRING) as end_station_id,
  b.end_station_name,
  b.start_lat,
  b.start_long,
  b.end_lat,
  b.end_long
FROM
  `cyclistic.202202-divvy-tripdata` as b

UNION ALL

SELECT 
  c.trip_id,
  c.user_type,
  c.rideable_type,
  CAST(c.start_time as DATETIME) as start_time,
  CAST(c.end_time as DATETIME) as end_time,
  CAST(c.start_station_id AS STRING) as start_station_id,
  c.start_station_name,
  CAST(c.end_station_id AS STRING) as end_station_id,
  c.end_station_name,
  c.start_lat,
  c.start_long,
  c.end_lat,
  c.end_long
FROM
  `cyclistic.202203-divvy-tripdata` as c

UNION ALL

SELECT 
  d.trip_id,
  d.user_type,
  d.rideable_type,
  CAST(d.start_time as DATETIME) as start_time,
  CAST(d.end_time as DATETIME) as end_time,
  CAST(d.start_station_id AS STRING) as start_station_id,
  d.start_station_name,
  CAST(d.end_station_id AS STRING) as end_station_id,
  d.end_station_name,
  d.start_lat,
  d.start_long,
  d.end_lat,
  d.end_long
FROM
  `cyclistic.202204-divvy-tripdata` as d

UNION ALL

SELECT 
  e.trip_id,
  e.user_type,
  e.rideable_type,
  CAST(e.start_time as DATETIME) as start_time,
  CAST(e.end_time as DATETIME) as end_time,
  CAST(e.start_station_id AS STRING) as start_station_id,
  e.start_station_name,
  CAST(e.end_station_id AS STRING) as end_station_id,
  e.end_station_name,
  e.start_lat,
  e.start_long,
  e.end_lat,
  e.end_long
FROM
  `cyclistic.202205-divvy-tripdata` as e

UNION ALL

SELECT 
  f.trip_id,
  f.user_type,
  f.rideable_type,
  CAST(f.start_time as DATETIME) as start_time,
  CAST(f.end_time as DATETIME) as end_time,
  CAST(f.start_station_id AS STRING) as start_station_id,
  f.start_station_name,
  CAST(f.end_station_id AS STRING) as end_station_id,
  f.end_station_name,
  f.start_lat,
  f.start_long,
  f.end_lat,
  f.end_long
FROM
  `cyclistic.202206-divvy-tripdata` as f

UNION ALL

SELECT 
  g.trip_id,
  g.user_type,
  g.rideable_type,
  CAST(g.start_time as DATETIME) as start_time,
  CAST(g.end_time as DATETIME) as end_time,
  CAST(g.start_station_id AS STRING) as start_station_id,
  g.start_station_name,
  CAST(g.end_station_id AS STRING) as end_station_id,
  g.end_station_name,
  g.start_lat,
  g.start_long,
  g.end_lat,
  g.end_long
FROM
  `cyclistic.202207-divvy-tripdata` as g

UNION ALL

SELECT 
  h.trip_id,
  h.user_type,
  h.rideable_type,
  CAST(h.start_time as DATETIME) as start_time,
  CAST(h.end_time as DATETIME) as end_time,
  CAST(h.start_station_id AS STRING) as start_station_id,
  h.start_station_name,
  CAST(h.end_station_id AS STRING) as end_station_id,
  h.end_station_name,
  h.start_lat,
  h.start_long,
  h.end_lat,
  h.end_long
FROM
  `cyclistic.202208-divvy-tripdata` as h

UNION ALL

SELECT 
  i.trip_id,
  i.user_type,
  i.rideable_type,
  CAST(i.start_time as DATETIME) as start_time,
  CAST(i.end_time as DATETIME) as end_time,
  CAST(i.start_station_id AS STRING) as start_station_id,
  i.start_station_name,
  CAST(i.end_station_id AS STRING) as end_station_id,
  i.end_station_name,
  i.start_lat,
  i.start_long,
  i.end_lat,
  i.end_long
FROM
  `cyclistic.202209-divvy-tripdata` as i

UNION ALL

SELECT 
  j.trip_id,
  j.user_type,
  j.rideable_type,
  CAST(j.start_time as DATETIME) as start_time,
  CAST(j.end_time as DATETIME) as end_time,
  CAST(j.start_station_id AS STRING) as start_station_id,
  j.start_station_name,
  CAST(j.end_station_id AS STRING) as end_station_id,
  j.end_station_name,
  j.start_lat,
  j.start_long,
  j.end_lat,
  j.end_long
FROM
  `cyclistic.202210-divvy-tripdata` as j;



/* 2013 and 2015 was already one single tables - station */
/* Needed CAST to make all 'active_since' columns as DATE type, as some were TIMESTAMP type. */

# Uniting 2014 stations tables using UNION ALL */
# Created - cyclistic_stations_2014 */
SELECT
  a.id,
  a.name,
  a.latitude,
  a.longitude,
  a.dp_capacity,
  a.active_since
FROM
  `Cyclistic.Divvy_Stations_2014-Q1Q2` as a

UNION ALL

SELECT
  b.id,
  b.name,
  b.latitude,
  b.longitude,
  b.dp_capacity,
  CAST(b.active_since AS DATE)
FROM
  `Cyclistic.Divvy_Stations_2014-Q3Q4` as b;



## Uniting 2016 stations tables using UNION ALL 
# Created - cyclistic_stations_2016
SELECT 
  a.*
FROM 
  `Cyclistic.Divvy_Stations_2016_Q1Q2` as a

UNION ALL

SELECT 
  b.*
FROM 
  `Cyclistic.Divvy_Stations_2016_Q3` as b

UNION ALL

SELECT 
  c.*
FROM 
  `Cyclistic.Divvy_Stations_2016_Q4` as c;



/*Uniting 2017 stations tables using UNION ALL */
/* Created - cyclistic_stations_2017 */
SELECT
  a.id,
  a.name,
  a.city,
  a.latitude,
  a.longitude,
  a.dp_capacity,
  CAST(a.active_since as DATE)
FROM
  `Cyclistic.Divvy_Stations_2017_Q1Q2` as a

UNION ALL

SELECT
  b.id,
  b.name,
  b.city,
  b.latitude,
  b.longitude,
  b.dp_capacity,
  CAST(b.active_since AS DATE)
FROM
  `Cyclistic.Divvy_Stations_2017_Q3Q4` as b;



/* Uniting all station tables using UNION ALL */
/* Created - cyclistic_stations */
/* Columns 'city' and 'active_since' not used for this analyses. */
SELECT 
  a.id,
  a.name,
  a.latitude,
  a.longitude,
  a.dp_capacity
FROM 
  `Cyclistic.cyclistic_stations_2013` as a

UNION ALL

SELECT 
  b.id,
  b.name,
  b.latitude,
  b.longitude,
  b.dp_capacity
FROM 
  `Cyclistic.cyclistic_stations_2014` as b

UNION ALL

SELECT 
  c.id,
  c.name,
  c.latitude,
  c.longitude,
  c.dp_capacity
FROM 
  `Cyclistic.cyclistic_stations_2015` as c

UNION ALL

SELECT 
  d.id,
  d.name,
  d.latitude,
  d.longitude,
  d.dp_capacity
FROM 
  `Cyclistic.cyclistic_stations_2016` as d

UNION ALL

SELECT 
  e.id,
  e.name,
  e.latitude,
  e.longitude,
  e.dp_capacity
FROM 
  `Cyclistic.cyclistic_stations_2017` as e

ORDER BY 
  id ASC;


/* part of Google Capstone Project - https://github.com/Rhappy/Cyclistic */