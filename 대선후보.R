install.packages("twitteR")
install.packages("ROAuth""base4enc")
install.packages("base64enc")
install.packages("gWidgets")
library(gWidgets)
library(twitteR)
library(ROAuth)


options(quiToolkit="tcltk")
consKey<-'dwi1SmEQWkX1Hxi1Tg4eCbMdy'
consSecret<-'wbrzrWVZXEkgg7aANVIr9bzLHAQYLtjW7dYU2wXayH2MXFGcba'
token<-'247728337-TzFgxGLDsgMz4NmY06IeRSY1uKqPSqexiE6fULyT'
tokenSecret<-'3n3iaIBOPz6Slv6a8Xahzbfzh2L7KrNFtJPA140AaFTyR'

setup_twitter_oauth(consKey,consSecret,token,tokenSecret)


install.packages(c("Rcpp","wordcloud","plyr","twitteR","tm"))
library(rJava)
library(KoNLP)
install.packages("KoNLP")
install.packages("RSQLite")
library(wordcloud)
library(plyr)
library(twitteR)
install.packages("tm")
library(tm)
library(RColorBrewer)



#πÆ¿Á¿Œ
tweet<-userTimeline("moonriver365",n=100,since=as.Date("2016-10-10"))
keyword<-enc2utf8("πÆ¿Á¿Œ")
rtweet<-searchTwitter(keyword,n=1000)

useSejongDic()
tweet.df<-twListToDF(tweet)
tweet.text<-tweet.df$text
tweet_nouns<-Map(extractNoun,tweet.text)
result_wordsvec<-unlist(tweet_nouns,use.name=F)
pal<-brewer.pal(12,"Paired")



mergeUserDic(data.frame(c('πÆ¿Á¿Œ','æ»»Ò¡§','»≤±≥æ»','æ»√∂ºˆ','¿ØΩ¬πŒ'),"ncn"))
result_wordsvec<-gsub("https.*","",result_wordsvec)
result_wordsvec<-gsub("http.*","",result_wordsvec)
result_wordsvec<-gsub("http.*","",result_wordsvec)
result_wordsvec<-gsub("https","",result_wordsvec)
result_wordsvec<-gsub("00","",result_wordsvec)
result_wordsvec<-gsub("...","",result_wordsvec)
result_wordsvec<-gsub("t","",result_wordsvec)
result_wordsvec<-gsub("[A-z]","",result_wordsvec)
result_wordsvec<-gsub("[0-9]","",result_wordsvec)
windowsFonts(malgun=windowsFont("Arial"))
result_wordcount<-table(result_wordsvec)



wordcloud(words=names(result_wordcount),freq=result_wordcount[result_wordcount>1],
scale=c(4,2),min.freq=3,random.order=F,rot.per=.1,colors=pal,
family="malgun")

write.csv(result_wordcount,"C:/Users/SAMSUNG/Desktop/«ÿƒø≈Ê¡ÿ∫Ò/∫Ûµµ.csv")

rtweet.df<-twListToDF(rtweet)
rtweet.text<-rtweet.df$text
rtweet_nouns<-Map(extractNoun,rtweet.text)
rresult_wordsvec<-unlist(rtweet_nouns,use.name=F)
pal<-brewer.pal(12,"Paired")


library(KoNLP)
help("deprecated")
??buidDictionary

rresult_wordsvec<-gsub("https.*","",rresult_wordsvec)
rresult_wordsvec<-gsub("http.*","",rresult_wordsvec)
rresult_wordsvec<-gsub("http.*","",rresult_wordsvec)
rresult_wordsvec<-gsub("https","",rresult_wordsvec)
rresult_wordsvec<-gsub("00","",rresult_wordsvec)
rresult_wordsvec<-gsub("...","",rresult_wordsvec)
rresult_wordsvec<-gsub("t","",rresult_wordsvec)
rresult_wordsvec<-gsub("[A-z]","",rresult_wordsvec)
rresult_wordsvec<-gsub("[0-9]","",rresult_wordsvec)
rresult_wordsvec<-gsub("[[:punct:]]","",rresult_wordsvec)
rresult_wordsvec<-gsub("[[:cntrl:]]","",rresult_wordsvec)
windowsFonts(malgun=windowsFont("Arial"))
rresult_wordcount<-table(rresult_wordsvec)



wordcloud(names(rresult_wordcount),freq=rresult_wordcount,
scale=c(4,2),min.freq=50,random.order=F,rot.per=.1,colors=pal,
family="malgun")



--------------------------------------------------------------------



ddd<-sapply(ccc,extractNoun,USE.NAMES=F)

#æ»»Ò¡§
userTimeline("steelroot",n=100)
#»≤±≥æ»
userTimeline("")
#æ»√∂ºˆ
userTimeline("cheolsoo0919",n=100)
#¿Ã¿Á∏Ì
userTimeline("Jaemyung_Lee",n=100)
#¿ØΩ¬πŒ
userTimeline("")

