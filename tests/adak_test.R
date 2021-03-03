# Test sunrise sunset to make sure it's robust to the two time zones in AK

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