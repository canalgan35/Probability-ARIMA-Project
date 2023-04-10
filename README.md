# Probability-ARIMA-Project

Aim of the project: Predict future value and trends of the stock.

Summary of ARIMA

ARIMA: Auto Regressive Integrated Moving Average
It is a statistical analysis model. ARIMA uses time series data and it is useful:

1)To understand the data better  
2)To forecast future trends based on past data

If the time series is stationary, we can look at some parts of them to work on because shifts of the time do not affect shape. Thus, we make the data stationary via differencing them.

ARIMA basically consists of AR, I and MA parts

AR: Auto Regression
The model uses the dependent relationship between current data and its past values. It is useful to handle a wide range of different time series pattern.
Mathematically: It models the current value as a linear combination of the previous p values.


I: Integrated
This means that data is stationary.


MA: Moving Average
The forecast or outcome of the model depends linearly on the past values. 
Mathematically: It models the current value as a linear combination of the previous q error terms. (εt is white noise)

Box-Jenkins Backshift Operator

It is defined by $B^p.Y_t=Y_(t-p)$ where $Y_1,…,Y_t$ be any time series p<t.
If we combine Auto Regression and Moving Average, we get a non-seasonal(not stationary) model. Integration makes the model seasonal(stationary). 


ARIMA (p, d, q)

p- the number of autoregressive terms or the number of lag observations
d- the degree of differencing (how many times the data have to be differenced to make it stationary)
q- the number of forecast errors in the model 


If d=0, it is ARMA model (being stationary is not an issue)
Mathematically: It describes a stationary stochastic process in terms of two polynomials with using the past values and the past error terms.

If d=0 and q=0, it is AR model (no moving averages and no stationary data)

If p=0 and d=0, it is MA model (no auto regression and non stationary data)

If p=0, d=0 and q=0, it is known as “White Noise”


Some Special ARIMA Models


p=1, d=0, q=0 known as the first order autoregressive model
p=0, d=1, q=0 known as the random walk model
p=1, d=1, q=0 known as the differenced first order autoregressive model
p=0, d=0, q=0 known as the white noise

ACF
Measure the relationship between $y_t and $y_(t−k)$ for different values of k

PACF
Measure the relationship between $y_t$ and $y_(t−k)$ after removing the effects of lags 1,2,3,…,k−1




REFERENCE

https://corporatefinanceinstitute.com/resources/knowledge/other/autoregressive-integrated-moving-average-arima/

https://towardsdatascience.com/introduction-to-arima-for-time-series-forecasting-ee0bc285807a

https://online.stat.psu.edu/stat501/lesson/14/14.5/14.5.1


