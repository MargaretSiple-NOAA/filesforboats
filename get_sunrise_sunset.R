#' Get sunrise/sunset
#'
#' @param chosen.date Date, formatted as YYYY-MM-DD
#' @param latitude Numeric latitude in either decimal degrees or a character latitude in degrees and decimal minutes
#' @param longitude Numeric longitude in either decimal degrees or a character longitude in degrees and decimal minutes
#'
#' @return Time of sunrise and sunset in text. Also shows a pop-up with sunrise and sunset times.
#' @export
#'
#' @examples
get.sunrise.sunset <- function(chosen.date, latitude, longitude) {
  # Are lat/long in degrees and decimal mins? If so, convert to decimal degrees.
  ddm <- is.character(latitude) | is.character(longitude)
  if (ddm) {
    if (!grepl(" ", x = latitude) | !grepl(" ", x = longitude)) {
      stop("You have chosen degrees and decimal minutes but have no space in the character string you entered. Please format your lat and/or long as D mm.m OR enter a numeric value for decimal degrees")
    }
    lat_deg <- as.numeric(gsub(" .*$", "", latitude))
    lat_min <- as.numeric(gsub("^\\S+\\s+", "", latitude)) / 60
    latitude <- lat_deg + lat_min

    lon_deg <- as.numeric(gsub(" .*$", "", longitude))
    lon_min <- as.numeric(gsub("^\\S+\\s+", "", longitude)) / 60
    longitude <- lon_deg + lon_min
  }

  sunrise <- maptools::sunriset(
    sp::SpatialPoints(
      matrix(c(longitude, latitude),
        ncol = 2
      ),
      proj4string = sp::CRS("+proj=longlat +datum=WGS84")
    ),
    chosen.date,
    direction = "sunrise",
    POSIXct.out = T
  )$time

  sunset <- maptools::sunriset(
    sp::SpatialPoints(
      matrix(c(longitude, latitude),
        ncol = 2
      ),
      proj4string = sp::CRS("+proj=longlat +datum=WGS84")
    ),
    chosen.date,
    direction = "sunset",
    POSIXct.out = T
  )$time

  # fix time zone to Dutch/Anchorage (AKST)
  sunrise <- lubridate::with_tz(sunrise, tzone = "US/Alaska")
  sunset <- lubridate::with_tz(sunset, tzone = "US/Alaska")

  rstudioapi::showDialog(
    title = "",
    message = paste(
      "<b>Sunrise</b> is at", sunrise, "AKST",
      ".  <b>Sunset</b> is at", sunset, "AKST"
    )
  )

  message(
    "Sunrise is at ", sunrise, "AKST",
    "\n Sunset is at ", sunset, "AKST"
  )
}