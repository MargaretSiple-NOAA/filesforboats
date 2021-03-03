# Test sunrise sunset to make sure it's robust to the two time zones in AK
# This isn't really a "test" like normal tests because get.sunrise.sunset() doesn't return a value, it just gives a message. But this script can be used to compare sunrise and sunset in Dutch to sunrise/sunset in Adak. 


load("G:/GOA/GOA 2021/Files for boats/sunrise sunset/.RData")

get.todays.date()

# Load the function
source(here::here("R","get_sunrise_sunset.R"))

# Test the function
get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = 51.8800, # Adak
  longitude = -176.6581)

#Sunrise is at 2021-03-02 09:55:23 AKST
#Sunset is at 2021-03-02 20:56:11 AKST

get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = 53.8946, # Dutch
  longitude = -166.5401)
