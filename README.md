
# Instagram User Analysis in SQL

This repository contains SQL queries designed for exploring and analyzing an Instagram-like social media platform's database. The database schema comprises tables for users, photos, likes, tags, and associations between photos and tags.





## Database Structure: 

The dataset provided includes the following tables:

**•** **users:** Contains user details such as ID, username, and creation timestamp.

**•** **photos:** Stores information about photos uploaded by users.

**•** **likes:** Records user likes on specific photos.

**•** **tags:** Contains tag details.

**•** **photo_tags:** Association table linking photos with their respective tags.

## Project Purpose:

The SQL queries provided here serve two main purposes:

## A) Marketing Analysis:
**1.** **Oldest Users:** Identifying the 5 oldest users based on their registration date.

**2.** **Inactive Users:** Finding users who have never posted any photos on the platform.

**3.** **Contest Winner:** Determining the winner of a contest based on the most liked photo and providing their details.

**4.** **Top Hashtags:** Suggesting the top 5 most commonly used hashtags on the platform.

**5.** **User Registration Insights:** Analyzing the day of the week with the highest user registrations to aid in scheduling ad campaigns.

## B) Investor Metrics

**1.** **Average User Activity:** Calculating the average number of posts per user and the ratio of total photos to total users.

**2.** **Bot Identification:** Identifying users who have liked every photo on the site, potentially indicating bot behavior.
    
## Usage:
Execute the SQL queries sequentially in your preferred SQL environment connected to the provided Instagram-like database. Each query is labeled and corresponds to a specific analysis or metric as outlined above.

Feel free to modify and expand upon these queries based on your requirements or perform additional analyses on the provided dataset.