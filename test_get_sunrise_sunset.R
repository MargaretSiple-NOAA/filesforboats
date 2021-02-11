# Sunrise and sunset

# NOTE: need to connect to VPN to call this RData file
load("G:/ALEUTIAN/AI 2020/Files for boats/sunrise sunset/.RData")

get.todays.date()

# This file contains my edits
source(here::here("get_sunrise_sunset.R"))

# Test the function
get.sunrise.sunset(
  chosen.date = get.todays.date(),
  latitude = 47.60621, # Seattle
  longitude = -122.33207
)

