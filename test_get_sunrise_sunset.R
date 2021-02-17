# Sunrise and sunset

# NOTE: need to connect to VPN to call this RData file. Eventually if people load this as an R package, this step will not be necessary.
load("G:/GOA/GOA 2021/Files for boats/sunrise sunset/.RData")

get.todays.date()

# Load the function
source(here::here("get_sunrise_sunset.R"))

# Test the function
get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = 47.60621, # Seattle
  longitude = -122.33207, 
  ddm = FALSE # this is the default
)

get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = "47 36.3726", # Seattle
  longitude = "-122 19.9242",
  ddm = TRUE
)
