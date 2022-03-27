pi;print(pi);cat(pi)
print('원주율은',pi,'이다')
cat('원주율은',pi,'이다')
y<-matrix(1:4,nrow = 2)
print(y)
cat(y)
getwd()

x<-c(24,28,31,25)
m.x<-mean(x);s.x<-sd(x)

cat("Data:",x,"\n",file = "C://Users//user//Documents//out1.txt",append=TRUE)
cat("Mean value is",m.x,"\n",file = "C://Users//user//Documents//out1.txt",append=TRUE )
cat("Standard deviation is",s.x,"\n", file = "C://Users//user//Documents//out1.txt",append=TRUE)

write.table(women,"c:/Users/user/Documents/out2_1.txt")
write.table(women,"C://Users//user//Documents//out2_2.txt",quote=FALSE)
write.table(women,"C://Users//user//Documents//out2_3.txt",quote=FALSE,row.names=FALSE, sep=",")
write.csv(women,"C://Users//user//Documents//out2_4.txt",quote=FALSE)
          