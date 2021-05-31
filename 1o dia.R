dados <- read.delim("C:/Users/Deyvidy/Desktop/IC/BovespaBVSP.csv",sep = ",")
bvsp$High
soma <- sum(dados$Open)
media <- mean(dados$Open)
summary(dados$Open)
boxplot(dados$Open)
dados2 <- read.delim("C:/Users/Deyvidy/Desktop/IC/BTC-USD.csv",sep = ",")
