library(forecast)

data <- read.csv2('data.csv')
v <- data[1:"1817",2]

ajuste <- auto.arima(v)
ajuste

ajuste1 <- Arima(v,order = c(0, 0, 0))
ajuste2 <- Arima(v,order = c(0, 0, 1))
ajuste3 <- Arima(v,order = c(0, 0, 2))
ajuste4 <- Arima(v,order = c(0, 1, 0))
ajuste5 <- Arima(v,order = c(0, 1, 1))
ajuste6 <- Arima(v,order = c(0, 1, 2))
ajuste7 <- Arima(v,order = c(0, 2, 0))
ajuste8 <- Arima(v,order = c(0, 2, 1))
ajuste9 <- Arima(v,order = c(0, 2, 2))
ajuste10 <- Arima(v,order = c(1, 0, 0))
ajuste11 <- Arima(v,order = c(1, 0, 1))
ajuste12 <- Arima(v,order = c(1, 0, 2))
ajuste13 <- Arima(v,order = c(1, 1, 0))
ajuste14 <- Arima(v,order = c(1, 1, 1))
ajuste15 <- Arima(v,order = c(1, 1, 2))
ajuste16 <- Arima(v,order = c(1, 2, 0))
ajuste17 <- Arima(v,order = c(1, 2, 1))
ajuste18 <- Arima(v,order = c(1, 2, 2))
ajuste19 <- Arima(v,order = c(2, 0, 0))
ajuste20 <- Arima(v,order = c(2, 0, 1))
ajuste21 <- Arima(v,order = c(2, 0, 2))
ajuste22 <- Arima(v,order = c(2, 1, 0))
ajuste23 <- Arima(v,order = c(2, 1, 1))
ajuste24 <- Arima(v,order = c(2, 1, 2))
ajuste25 <- Arima(v,order = c(2, 2, 0))
ajuste26 <- Arima(v,order = c(2, 2, 1))
ajuste27 <- Arima(v,order = c(2, 2, 2))
ajuste1
ajuste2
ajuste3
ajuste4
ajuste5
ajuste6
ajuste7
ajuste8
ajuste9
ajuste10
ajuste11
ajuste12
ajuste13
ajuste14
ajuste15
ajuste16
ajuste17
ajuste18
ajuste19
ajuste20
ajuste21
ajuste22
ajuste23
ajuste24
ajuste25
ajuste26
ajuste27


previsao <- forecast(ajuste1, h=6)
previsao

predict(v,10,ahead=4)

predict(ajuste1, n.ahead = 10, newxreg = NULL,
        se.fit = TRUE)

arima0(v, order = c(0, 0, 0),
       seasonal = list(order = c(0, 0, 0), period = NA),
       xreg = NULL, include.mean = TRUE, delta = 0.01,
       transform.pars = TRUE, fixed = NULL, init = NULL,
       method = c("ML", "CSS"), n.cond, optim.control = list())

predict(arima0(v, order = c(1,0,0)), n.ahead = 10)

write.table(previsao, file = "previretornos.csv", append = FALSE, quote = TRUE, sep = ";", eol = "\n", na = "NA", dec = ",",
            row.names = TRUE, col.names = TRUE, qmethod = c("escape", "double"))
