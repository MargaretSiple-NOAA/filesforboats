# Sunrise and sunset
# Last modified by Megsie Siple, 2/17/21

# **NOTE: need to connect to VPN to call this RData file.** 

# You do NOT need this code to use anything on the boats. This file is just for testing and troubleshooting.

load("G:/GOA/GOA 2021/Files for boats/sunrise sunset/.RData")

get.todays.date()

# Load the function
source(here::here("R","get_sunrise_sunset.R"))

# Test the function
get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = 47.60621, # Seattle
  longitude = -122.33207)

get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = "47 36.3726", # Seattle
  longitude = "-122 19.9242"
)

save(split.character.string, get.todays.date, get.sunrise.sunset, file = ".RData")
