#install if only necessary 
#install.packages("janeaustenr")
#install.packages(tidytext)
install.packages("tm")
library(dplyr)
library(tidytext)
library(janeaustenr)
library(tm)
library(ggplot2)
library(datateachr)
#Exercise1 
#refference for stopwords removal: 
#https://medium.com/@esegui/stop-word-removal-in-r-9f46c4eef710
#reference on tokenizer package https://cran.r-project.org/web/packages/tidytext/vignettes/tidytext.html

janeaustenr::emma
corpuso<-Corpus(VectorSource(janeaustenr::emma))
custom_stopwords <- c("is", "a", "for", "in")
corpuso_cleaned<-tm_map(corpuso,removeWords,custom_stopwords)

text_cleaned <- as.character(corpuso_cleaned)

bookdata<-data.frame(text=text_cleaned[1])

words<-bookdata%>%
	unnest_tokens(word,text)

word_counts <- words %>%
	count(word, sort = TRUE)
#pick the top 20 most frequently used words  
top20<-word_counts%>%
	slice_max(n,n=20)
top20%>%
	ggplot(aes(x=word,y=n))+
	geom_col()+
	labs(title="Most Common words in Emma",x="Words",y="Frequency")
	

#Exercise 3 
#use 
cancer_sample
#make a prediction between radius and texture_mean-> correlation? lm 