WITH base as 
(SELECT
TIME(tweet_created) AS tweetTime,
DATE(tweet_created) AS tweetDate,
CASE 
 WHEN EXTRACT(minute FROM tweet_created) >30 THEN EXTRACT(HOUR FROM tweet_created) +1 
 ELSE EXTRACT(HOUR FROM tweet_created)
END AS HOUR, 
tweet_text
from
`twitter_new_year_resolution.resolutions`)
SELECT HOUR, COUNT(tweet_text) as no_of_tweet
FROM
base 
GROUP BY 1
