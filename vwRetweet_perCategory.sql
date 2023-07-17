SELECT tweet_category,SUM(retweet_count) AS total_retweet
FROM
`twitter_new_year_resolution.resolutions`
GROUP BY tweet_category
