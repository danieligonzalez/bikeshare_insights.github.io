--Bikeshare Insights SQL Codes

--#1. finding bike type usage
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_01_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_02_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_03_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_04_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_06_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_07_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_08_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_09_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_10_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual
UNION DISTINCT
SELECT DISTINCT rideable_type, member_casual, COUNT(rideable_type) AS times_used
FROM `sql-practice-365202.cyclistic_bikeshare.2022_11_divvy_tripdata`
WHERE rideable_type = 'electric_bike' AND member_casual = 'member'
GROUP BY rideable_type, member_casual

--to find the remaining bikes and which were ridden by who.  Just change the rideable_type = in the where statement and the member_casual = in the where statement.


--#2. Following Query is to find the average ride time.

SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_01_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_02_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_03_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_04_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_06_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_07_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_08_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_09_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_10_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT AVG(TIMESTAMP_DIFF(started_at, ended_at, MINUTE)) AS ride_time
FROM `sql-practice-365202.cyclistic_bikeshare.2022_11_divvy_tripdata`
WHERE member_casual = 'casual'

-- To find the average ride time of members just change the member_casual = in the WHERE statement.

--#3. Average Distance Per Ride
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_01_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_02_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_03_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_04_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_06_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_07_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_08_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_09_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_10_divvy_tripdata`
WHERE member_casual = 'casual'
UNION DISTINCT
SELECT
  AVG(st_distance(
    st_geogpoint(start_lng, start_lat),
    st_geogpoint(end_lng, end_lat)
  )) as dist_in_meters
FROM `sql-practice-365202.cyclistic_bikeshare.2022_11_divvy_tripdata`
WHERE member_casual = 'casual'

-- To find the average distance for annual members just change the member_casual = in the WHERE statement.

--#4. Bike Station Traffic.
-- Following is for the Start Stations.

SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_01_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_02_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_03_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_04_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_06_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_07_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_08_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_09_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_10_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(start_station_name) AS bike_count, start_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_11_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY bike_count DESC

-- To find the results for annual members, just change member_casual = in the WHERE statement.

-- Following is for the End Stations.

SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_01_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_02_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_03_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_04_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_06_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_07_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_08_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_09_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_10_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
UNION DISTINCT
SELECT DISTINCT COUNT(end_station_name) AS bike_count, end_station_name
FROM `sql-practice-365202.cyclistic_bikeshare.2022_11_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY end_station_name
ORDER BY bike_count DESC

-- To find the results for annual members, just change member_casual = in the WHERE statement.

--#5. Day of The Week Usage

SELECT
EXTRACT(dayofweek FROM started_at) AS start_weekday, COUNT(*) AS trips
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE member_casual = 'casual'
GROUP BY EXTRACT(dayofweek FROM started_at)

-- Run this code individually for each table and change the member_casual = in the WHERE statement to find results for Annual Members.

--#6. Time of The Day Usage

WITH start_datetime AS (

  SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2021_12_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_01_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_02_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_03_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_04_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_05_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_06_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_07_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_08_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_09_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_10_divvy_tripdata`
WHERE member_casual = 'member'
UNION ALL
SELECT DISTINCT ride_id, start_station_name, CAST(started_at AS date) AS ymd, CAST(started_at AS time) AS hours, EXTRACT(dayofweek FROM started_at) AS start_weekday
FROM `sql-practice-365202.cyclistic_bikeshare.2022_11_divvy_tripdata`
WHERE member_casual = 'member'
)

SELECT *
FROM start_datetime
WHERE hours BETWEEN '20:00:00' AND '23:59:59'
ORDER BY ymd DESC

-- To find results for different time segments change the times in the WHERE hours BETWEEN statements.
-- Also, to find results for Annual Members, change the member_casual = in the WHERE statements.