
#Load data manipulation packages
library(tidyverse)
library(ggplot2)

#Load time series library
library(forecast)

#Read data in
dat = read.csv('bike_sharing_hourly.csv')

head(dat_ts)

#Split data into train and test sets 
train_obs = as.integer(nrow(dat_ts)*0.79105)

#Convert it into a time series object 
seas_1 = 24
seas_2 = 24*7

#Create train and test sets
train_set = msts(dat_ts[1:train_obs, ], seasonal.periods = c(seas_1, seas_2))
test_set = msts(dat_ts[(train_obs + 1) : nrow(dat_ts), ], 
                seasonal.periods = c(seas_1, seas_2))

#Check splits
tail(train_set)
head(test_set)

#Use msts to decompose time series
train_set[,'cnt'] %>% mstl() %>% autoplot() + xlab('day')

#Fit a tbats model to ride counts data
tbats_fit = tbats(train_set[,'cnt'])


plot(tbats_fit)

#Create fourier terms to capture seasonality
seasonal_fourier = fourier(log(train_set[, 'cnt']), K=c(5,5))

#Fit a regression model with ARIMA errors
xreg = cbind(seasonality=seasonal_fourier,
             WindSpeed = train_set[, "windspeed"],
              RealFeel_Temp = (train_set[, "atemp"]),
              holiday = train_set[, "holiday"])
xreg

( fit = auto.arima(y=log(train_set[, 'cnt']), xreg=xreg, seasonal=FALSE) )

#Check residuals of fitted model
cbind("Regression Errors" = residuals(fit, type="regression"),
      "ARIMA errors" = residuals(fit, type="innovation")) %>% 
autoplot(facets=TRUE)

#Check if residuals are uncorrelated/normally distributed
checkresiduals(fit)

ndiffs(log(train_set[,'cnt']))
