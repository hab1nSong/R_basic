#Iris data UCI에서 가져오기
iris.url<-'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'

iris.data<-read.csv(iris.url,header = FALSE, stringsAsFactors = FALSE)
names(iris.data) <-c("S.length","S.width",
                     "P.length","P.width","Species")

head(iris.data)

#HTML table 가져오기 1-원하는 node를 아는 경우
install.packages('rvest')
library(rvest)
URL<-'https://en.wikipedia.org/wiki/World_population'
web<-read_html(URL)
tbl<-html_nodes(web,"table")
length(tbl)
head(tbl)

tbl_1<-html_table(tbl[7])
tbl_1

#HTML table 가져오기 2-원하는 node를 모르는 경우
URL_2<-'https://en.wikipedia.org/wiki/World_population'
web_2<-read_html(URL_2)
node_2<-html_nodes(web_2,xpath = '//*[@id="mw-content-text"]/div/table[6]')
tbl_2<-html_table(node_2)
tbl_2

top_pop<-tbl_2[[1]]
top_pop

names(top_pop)<-c("rank",'country','pop','area','density')
str(top_pop)
