USE ig_clone;
select * from users;
select * from photos;
select * from likes;
select * from tags;
select * from photo_tags;

-- A) Marketing --

# 1] Find the 5 oldest users of the Instagram from the database provided.
select id, username, created_at 
from users
order by created_at
limit 5;

# 2] Find the users who have never posted a single photo on Instagram
select id, username 
from users
where id not in (
	select distinct user_id 
    from photos
    );

# 3] Identify the winner of the contest and provide their details to the team
select photo_id, image_url, username, count(*) as like_count
from photos
inner join users on photos.user_id = users.id
inner join likes on photos.id = likes.photo_id
group by photos.id
order by like_count desc
limit 1;

# 4] Identify and suggest the top 5 most commonly used hashtags on the platform
select tag_name, tag_id, count(*) as most_used_tags
from tags
inner join photo_tags on tags.id = photo_tags.tag_id
group by tags.id
order by most_used_tags desc
limit 5;


# 5] What day of the week do most users register on? Provide insights on when to schedule an ad campaign
select dayname(created_at) as weekday, count(*) as total_registrations
from users
group by dayname(created_at)
limit 2;

-- B) Investor Metrics --
# 1] Provide how many times does average user posts on Instagram. Also, provide the total number of photos on Instagram/total number of users
select
(select count(*) from photos) / (select count(*) from users);

# The total number of photos on Instagram/total number of users
select  count( distinct id) from users;
select count(distinct id) from photos;

# 2] Provide data on users (bots) who have liked every single photo on the site (since any normal user would not be able to do this).
SELECT username , id
FROM users
INNER JOIN (
  SELECT likes.user_id, COUNT(DISTINCT likes.photo_id) AS num_photos_liked
  FROM likes
  GROUP BY likes.user_id
) AS likes_count ON users.id = likes_count.user_id
WHERE likes_count.num_photos_liked = (
  SELECT COUNT(*) FROM photos
);