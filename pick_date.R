#pick.date function

pick.date <- function () 
{
  require(tcltk)
  require(maptools)
  print("Enter date (format: 2010-07-01):")
  chosen.date <- scan(what = "", n = 1)
  chosen.date <- as.POSIXct(chosen.date)
  tt <- tktoplevel()
  lat <- tclVar("")
  long <- tclVar("")
  entry.lat <- tkentry(tt, width = "15", textvariable = lat)
  entry.long <- tkentry(tt, width = "15", textvariable = long)
  tkgrid(tklabel(tt, text = "Enter the latitude (+DDMM.MM)"))
  tkgrid(entry.lat)
  tkgrid(tklabel(tt, text = "Enter the longitude (-DDDMM.MM)"))
  tkgrid(entry.long)
  OnOK <- function() {
    lat <- tclvalue(lat)
    long <- tclvalue(long)
    tkdestroy(tt)
    get.sunrise.sunset(chosen.date, as.numeric(lat), as.numeric(long))
  }
  OK.but <- tkbutton(tt, text = "   OK   ", command = OnOK)
  tkbind(lat, "<Return>", OnOK)
  tkbind(lat, "<Return>", OnOK)
  tkgrid(OK.but)
  tkfocus(tt)
}
