get.sunrise.sunset <- function(chosen.date, latitude, longitude) {
  # latitude <- latitude %/% 100 + (latitude %% 100) / 60
  # longitude <- sign(longitude) * (abs(longitude) %/% 100 + (abs(longitude) %% 100) / 60)
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
  #browser()
  
  rstudioapi::showDialog(title = "",
                         message = paste("<b>Sunrise</b> is at", sunrise,
                                         ".  <b>Sunset</b> is at", sunset))
  
  message("Sunrise is at ", sunrise,
              "\n Sunset is at ", sunset)
}
