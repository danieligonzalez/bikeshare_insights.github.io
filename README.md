# Bikeshare Insights.github.io

Google Data Analytics Professional Certificate Capstone Project

Cyclistic a bikeshare company in Chicago Illinois.

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, the Director of Marketing believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, she believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

The Marketing Director has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

Main goal of the project is to understand the key differences between the usage of casual riders and annual members so that we can make a recommendation on how to gain more annual members.


## Ask

I began thinking through questions to ask the Data before the preparation phase.  Here are the following questions I searched for:

1. What bike types do annual members ride and which ones do the casual riders choose?

2. What is the difference in the average amount of time a members uses their bike versus a casual rider?

3. What is the difference in average distance ridden between annual members and casual riders?

4. Which bike stations have more member traffic and which ones have more casual rider traffic?  Where are those stations located in the city?  In leisurely parks and recreational areas, or business office areas?

5. What days of the week have higher usage for the members versus the casual riders?

6. What time of day has the most bike usage for members and what time of day for the casual riders?


## Preparation

I started by downloading the past 12 Months of bikeshare data.
https://divvy-tripdata.s3.amazonaws.com/index.html

There was too much data for Excel, so I uploaded to SQL.


## Process

I familiarized myself with the Data tables and the schema.  The 12 months of data tables shared the same schema.

I looked for inconsistencies in the data such as spelling errors or differences in the data inputs.

Here is the schema for the data tables:
    ride_id
    rideable_type
    started_at
    ended_at
    start_station_name
    start_station_id
    end_station_name
    end_station_id
    start_lat
    start_lng
    end_lat
    end_lng
    member_casual



## Analyze

I began querying the Data tables to find data for each of the questions.  All of this was done with SQL and the results were stored in Excel.

1. Bike Type Usage.  There were 3 differenct bike types available for customers.  Electric, classic, & docked.  I searched for the bikes there were more popular among annual members and which one were more popular with casual riders.

The members most used the classic, while the casual riders preferred the electric.


2. Average Ride Time.  The members rode their bikes for an average of 12 minutes and 27 seconds, while the casual riders rode for an average of 28 minutes and 24 seconds.

Casual riders would use their bikes for longer amount of time than members.  Potentially to get more use from their purchase.


3. Average Distance Per Ride.  I queried the data tables in SQL to find the average amount of meters per ride and then converted the meters to miles in Excel.

The members rode their bikes an average distance of 1.27 Miles, while the casual riders rode the average distance of 1.32 Miles.

Although there is not a significant difference in these distances what they do suggest is that according to the average ride time, the members ride at a much faster pace than the casual riders.


4. Bike Station Traffic.  The Data Tables contained information for where each ride started and where each one ended.

I wrote a query to count the amount of rides that started and ended at each station and if those rides where by a member or casual rider.

Specific locations can be see on the Tableau Dashboard.

The top 5 stations for members were located in business areas of the city.  Lots of office space and locations.  The most popular station is located W Kinzie St & N Kingsbury St.  Business Offices that are located in that vicinity include the following: Real Estate, Commodities Investment Group, Telecommunications, Employment Consultation, Software Developers, and a Co-Working Office space.  That station had 50,361 rides start and end there, while the second most popular station had 45,068 rides start and end at it's location.  

The top 5 stations for casual rider were located in leisurely park areas and near the lake.  The most popular station is located in Addams Memorial Park next to the Ohio Street Beach.  That station had 119,076 rides start and end there, while the second most popular station had 62,536 rides start and end at it's location.


5. Day of The Week Usage.  What days of the week is there a higher usage for annual members and what days of the week for casual riders.

I queried that data to extract the day of the week from the start timestamp and count the number of trips take on that day.

The top 3 days of the week for annual members were Tuesday, Wednesday, & Thursday.  Tuesday's throughout the past 12 month had 43,222 rides, Wednesday's had 44,812, and Thursday's had 45,028.  The day with the lowest amount of rides was Sunday at 32,541.

The top 3 days of the week for casual riders were Friday, Saturday, & Sunday.  Friday's throughout the past 12 month had 28,374 rides, Saturday's had 39,715, and Sunday's had 32,677.  The day with the lowest amount of rides was Tuesday at 22,000.

Chart on Tableau Dashboard.


6. Time of The Day Usage.  What times of the day do annual members ride more and what times do casual riders ride.

I queried the data with the timestamp into 4 hour segments to find which 4 hour segment was more popular for each rider.

The time segments were as follows, 12am-6am, 6am-10am, 10am-4pm, 4pm-8pm, 8pm-12am.

The annual members most popular time of day was the 4pm-8pm segment.  
1,143,043 rides started in that time segment over the past 12 months.  The least popular time segment was 12am-6am with 121,599 rides started then in the past 12 months.

The casual riders most popular time of day was the 10am-4pm segment.  
859,109 rides started in that time segment over the past 12 months.  The least popular time segment was 12am-6am with 127,903 rides started then in the past 12 months.

Chart and ranking on Tableau Dashboard.


## Share

In summary here are the a few insights gathered from the analysis phase of this project. 

1. Casual riders use their bikes much longer than members use their bikes.  However they ride a similar distance suggesting they ride at a much slower pace.

2. Casual Riders have the most traffic at location near the lake and recreational areas suggesting that they use the bikes for that purpose.  While annual members have the most traffic near office buildings.

3. Casual Riders use the bikes the most on the weekends and during the middle of the day.  While annual members use the bikes in the middle of the week and during the evening.

Something for the marketing team to take into consideration, would be to find ways to appeal to customers who use the bikes for recreational purposes on the weekends.

Tableau Dashboard
https://public.tableau.com/app/profile/daniel2560/viz/BikeshareData_16757969068540/Dashboard1

SQL code shared in the SQL file.
