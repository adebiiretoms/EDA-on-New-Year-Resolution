SELECT tweet_state, COUNT(tweet_text) AS noOftweet
 FROM
`twitter_new_year_resolution.resolutions`
GROUP BY 1
