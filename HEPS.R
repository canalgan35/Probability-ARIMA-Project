library(forecast)
library(tseries)

HEPS = read.csv("C:\\Users\\Bertug\\Downloads\\HEPS.csv")

close = HEPS[,5] #interested in on closed price

plot(close,type='l') #it is not a stationary time series

acf(close,main='ACF Plot',lag.max=100)

pacf(close,main='PACF Plot',lag.max=100)

auto.arima(close) #find appropriate values

fit = arima(close[],order= c(0,1,3),include.mean = FALSE)

acf(fit$residuals)

arima.forecast = forecast(fit, h=3, level=99)

arima.forecast

plot(arima.forecast)


