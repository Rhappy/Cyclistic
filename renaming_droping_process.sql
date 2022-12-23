/* Renaming 2013 trip columns */

ALTER TABLE
  `Cyclistic.Divvy_Trips_2013` 
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthday to birth_year;




/* Renaming 2014 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2014-Q3-07` 
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2014-Q3-0809`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE 
  `Cyclistic.Divvy_Trips_2014-Q4` 
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2014_Q1Q2`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;



/* Renaming 2015 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2015-Q1`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2015-Q2`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2015_07`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE 
`Cyclistic.Divvy_Trips_2015_08` 
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
`Cyclistic.Divvy_Trips_2015_09`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2015_Q4`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;



/* Renaming 2016 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2016_04`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2016_05`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE 
 `Cyclistic.Divvy_Trips_2016_06`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;
  
ALTER TABLE
  `Cyclistic.Divvy_Trips_2016_Q1`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2016_Q3`
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2016_Q4` 
RENAME COLUMN
  starttime to start_time,
RENAME COLUMN
  stoptime to end_time,
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;



/* Renaming 2017 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2017_Q1`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2017_Q2`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2017_Q3`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2017_Q4`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;


/* Renaming 2018 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2018_Q1`
RENAME COLUMN
  _01___Rental_Details_Rental_ID to trip_id,
RENAME COLUMN
  _01___Rental_Details_Local_Start_Time to start_time,
RENAME COLUMN
  _01___Rental_Details_Local_End_Time to end_time,
RENAME COLUMN
  _01___Rental_Details_Bike_ID to bike_id,
RENAME COLUMN
  _01___Rental_Details_Duration_In_Seconds_Uncapped to trip_duration,
RENAME COLUMN
  _03___Rental_Start_Station_ID to start_station_id,
RENAME COLUMN
  _03___Rental_Start_Station_Name to start_station_name,
RENAME COLUMN
  _02___Rental_End_Station_ID to end_station_id,
RENAME COLUMN
  _02___Rental_End_Station_Name to end_station_name,
RENAME COLUMN
  Member_Gender to gender,
RENAME COLUMN
  _05___Member_Details_Member_Birthday_Year to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2018_Q2`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2018_Q2`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2018_Q3`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2018_Q4`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;



/* Renaming 2018 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2019_Q1`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2019_Q2`
RENAME COLUMN
  _01___Rental_Details_Rental_ID to ride_id,
RENAME COLUMN
  _01___Rental_Details_Local_Start_Time to start_time,
RENAME COLUMN
  _01___Rental_Details_Local_End_Time to end_time,
RENAME COLUMN
  _01___Rental_Details_Bike_ID to bike_id,
RENAME COLUMN
  _01___Rental_Details_Duration_In_Seconds_Uncapped to trip_duration,
RENAME COLUMN
  _03___Rental_Start_Station_ID to start_station_id,
RENAME COLUMN
  _03___Rental_Start_Station_Name to start_station_name,
RENAME COLUMN
  _02___Rental_End_Station_ID to end_station_id,
RENAME COLUMN
  _02___Rental_End_Station_Name to end_station_name,
RENAME COLUMN
  Member_Gender to gender,
RENAME COLUMN
  _05___Member_Details_Member_Birthday_Year to birth_year;

ALTER TABLE 
  `Cyclistic.Divvy_Trips_2019_Q3`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;

ALTER TABLE
  `Cyclistic.Divvy_Trips_2019_Q4`
RENAME COLUMN
  bikeid to bike_id,
RENAME COLUMN
  tripduration to trip_duration,
RENAME COLUMN
  from_station_id to start_station_id,
RENAME COLUMN
  from_station_name to start_station_name,
RENAME COLUMN
  to_station_id to end_station_id,
RENAME COLUMN
  to_station_name to end_station_name,
RENAME COLUMN
  usertype to user_type,
RENAME COLUMN
  birthyear to birth_year;



/* Renaming 2020 trip columns */
ALTER TABLE
  `Cyclistic.Divvy_Trips_2020_Q1`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202004-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202005-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202006-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202007-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202008-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202009-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202010-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202011-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202012-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;



/* Renaming 2021 trip columns */
ALTER TABLE
  `Cyclistic.202101-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202102-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202103-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202104-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202105-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202106-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202107-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202108-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202109-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202110-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202111-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202112-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;



/* Renaming 2022 trip columns */
ALTER TABLE
  `Cyclistic.202201-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202202-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202203-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202204-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202205-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202206-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202207-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202208-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;

ALTER TABLE
  `Cyclistic.202209-divvy-tripdata`
RENAME COLUMN
  ride_id to trip_id,
RENAME COLUMN
  started_at to start_time,
RENAME COLUMN
  ended_at to end_time,
RENAME COLUMN
  start_lng to start_long,
RENAME COLUMN
  end_lng to end_long,
RENAME COLUMN
  member_casual to user_type;



/* Renaming and removing columns from stations data */
ALTER TABLE
  `Cyclistic.Divvy_Stations_2013`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2013`
DROP COLUMN
  landmark;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2014-Q1Q2`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2014-Q3Q4`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  dateCreated to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2015`
RENAME COLUMN
  dpcapacity to dp_capacity;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2015`
DROP COLUMN
  landmark;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2016_Q1Q2`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2016_Q3`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2016_Q4`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2017_Q1Q2`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE
  `Cyclistic.Divvy_Stations_2017_Q3Q4`
RENAME COLUMN
  dpcapacity to dp_capacity,
RENAME COLUMN
  online_date to active_since;

ALTER TABLE 
  `Cyclistic.Divvy_Stations_2017_Q3Q4`
DROP COLUMN
  string_field_7;



/* part of Google Capstone Project - https://github.com/Rhappy/Cyclistic */