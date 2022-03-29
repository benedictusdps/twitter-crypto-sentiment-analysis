# install libraries
library(twitteR)
library(tm)
library(rtweet)
library(xlsx)

# Login to twitter API
consumerKey <- # Consumer key 
consumerSecret <- # Consumer secret
accessKey <- # Access key
accessSecret <- # Access secret
setup_twitter_oauth(consumerKey, consumerSecret, accessKey, accessSecret)

# Determine the dates of the data taken
# Maximum of 7 days of past data allowed and/or a certain limit of tweets

sincedate = as.Date("2021-08-25") # Date of tweet
untildate = sincedate + 1
filedate = "250821" # Date of tweet
filetype = paste(filedate, ".xlsx", sep = "")

# Crypto vector for scraping
cryptos = c("BTC", "ETH", "BNB", "ADA", "DOGE", "XRP", "DOT", "UNI", "LINK")

# Loop to apply dates, file name, and search term for each crypto
cryptodate <- character(0)
cryptofile <- character(0)
cryptosearchkey <- character(0)
for (i in 1:length(cryptos)) {
  cryptodate[i] <- paste(cryptos[i], filedate, sep="")
  cryptofile[i] <- paste(cryptos[i], filetype, sep="")
  cryptosearchkey[i] <- paste(cryptos[i], "cryptocurrency", sep=" ")
}

# Loop to search using the twitter API and search terms
# After each loop, save it as an excel file
for (i in 1:length(cryptos)) {
  x <- twListToDF(searchTwitter(cryptosearchkey[i], n = 1000, lang = "en", since = as.character(sincedate), until = as.character(untildate)))
  write.xlsx(x, file = cryptofile[i], sheetName = cryptodate[i], append = FALSE)
}
