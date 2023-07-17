SELECT tweet_category, COUNT(tweet_text) AS no_of_tweet
 FROM `twitter_new_year_resolution.resolutions`
 GROUP BY tweet_category
