library(forecast)
library(tseries)

#download the stock data from Yahoo Finance and import dataset
HEPS = read.csv("C:\\Users\\Can\\Desktop\\HEPS.csv")

close = HEPS[,5] #interested in on closed price to predict future values

plot(close,type='l') #it is not a stationary time series

acf(close,main='ACF Plot',lag.max=100)

pacf(close,main='PACF Plot',lag.max=100)

auto.arima(close) #find appropriate values

fit = arima(close[],order= c(0,1,3),include.mean = FALSE)

acf(fit$residuals)

arima.forecast = forecast(fit, h=3, level=99)

arima.forecast

plot(arima.forecast)


