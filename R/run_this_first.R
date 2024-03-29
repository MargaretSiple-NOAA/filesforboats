# Dependencies for the get.sunrise.sunset function:
# rtools, maptools, sp, lubridate

# ************************************************
# ** MODIFY THIS PATH TO DESCRIBE THE FOLDER WITH THE TAR.GZ FILES!
depend_path <- "G:/ALEUTIAN/AI 2022/Files for Boats/sunrise sunset/2022/dependencies"
# ***********************************************

to_install <- c("cpp11_0.4.2.tar.gz",
                "generics_0.1.2.tar.gz",
                "sp_1.5-0.tar.gz", 
                "lubridate_1.8.0.tar.gz", 
                "maptools_1.1-4.tar.gz",
                "rstudioapi_0.13.tar.gz")


for (i in 1:length(to_install)) {
  install.packages(file.path(depend_path, to_install[i]),
    repos = NULL, type = "source"
  )
}

