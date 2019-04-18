## Why predict hourly counts of bike rentals?
Bike rental systems have become a very popular mode of transport in recent times. It is estimated that over 500 such systems exist in the world today. Data from these systems are used for a variety of different purposes. These include identifying congested areas in a city and accurately predicting traffic flow. 

My aim in this project is two fold. The first is to understand the complexities that come with modelling high frequency data. The second is to build an accurate predictor of hourly counts of bike rentals over a 30 day prediction horizon. To do so, I use a data set from  [Kaggle](https://www.kaggle.com/contactprad/bike-share-daily-data). It contains historical data from 2011 to 2012, provided by Capital Bike share systems in Washington, D.C. It is a well curated data set with information on weather and environmental conditions. 

## Tool used?
This depends on the techniques I experimented with. I used Python extensively to explore the data sets under study and build general additive models (think XGBoost and Facebook Prophet). Python is easy to use and parallelize code with (especially when working with Facebook Prophet where a single run takes up a lot of time). I used R to experiment with a lot of traditional time series techniques. This is because it has a leg up over Python when it comes to time series analysis (think Forecast package in R). All of my analysis was carried out on Jupyter notebooks. Being language agnostic (if the languages you rely on are Python or R ;)) makes them a wonderful tool to explore, analyze and model data with using different programming languages.

If you would like to have a quick look at my findings, please feel free to check out my [slides](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/blob/master/Report_and_slides/_UofT__Time_Series_Course_Presentation.pdf) on it. For a more i-depth view of my methodology and my results, please refer to my [paper](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/blob/master/Report_and_slides/Predicting_hourly_bike_rides.pdf).

Folder Name | Description | Link
:------------ | :------------------------ | :----------------------------------:
Alternative_methods | This folder contains details on my experimentation with linear regression models to predict rental counts. | [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/Alternative_methodss)
Data | This folder contains the data sets I used to conduct my analysis | [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/Data)
EDA | This folder contains my initial exploratory analysis of the data sets under study | [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/EDA)
FB_Prophet | This folder contains predictive models I built using Facebook's prophet package | [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/FB_Prophet)
Pictures | This folder contains pictures from my analysis that I used in my presentation and report | [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/Pictures)
References | This folder contains pdf copies of papers I referred to when conducting my analysis| [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/References)
Report_and_slides | Self explanatory| [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/Report_and_slides)
STLF | This folder contains code I wrote to build a predictive model that decomposed the rental count time series and predicted its seasonal component naively and its seasonally adjusted portion using ARIMA| [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/STLF)
XGBoost | This folder contains my code I wrote to predictct hourly rental counts using a very popular boosting algorithm called XGBoost| [Click here](https://github.com/navysealtf9k/Predicting_hourly_bike_rides/tree/master/XGBoost)
