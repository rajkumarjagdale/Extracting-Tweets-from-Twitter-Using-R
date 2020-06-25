rm(list=ls())  # removes all objects from the current workspace (R memory)
library(twitteR)
library(ROAuth)
library(RCurl)
library(httr)
CUSTOMER_KEY <- "======oXQOxYvpwvvKimvaDgT======"
CUSTOMER_SECRET <- "=====rkxb06siFOnnqBth======="
ACCESS_TOKEN <- "====YzUcn03amV3YEDAh====="
ACCESS_secret <- "====CwOirn7v880Rntf======="
#setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)
setup_twitter_oauth(CUSTOMER_KEY, CUSTOMER_SECRET, ACCESS_TOKEN, ACCESS_secret)
mytweets <- searchTwitter("#Corona",lang="en",n=30000,since='2020-03-15', until='2020-04-15')
mytweets <- searchTwitter("#cryptocurrency",lang="en",n=30)
mytweets <- strip_retweets(mytweets)
length(mytweets)

tweets_df = twListToDF(mytweets)

write.csv(tweets_df, file='C:/Users/MSR-LAB-PC24/Desktop/Corona.csv', row.names=F)

 