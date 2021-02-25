# filesforboats

## Functions I've worked on

| Function           | Status |
| -------------    |:-------------|
|`get.sunrise.sunset()` | New Siple version has replaced old version  |
|`sunrise.sunset.times()`| I think this is deprecated |
|`pick.date()`| I think this is deprecated  |
|`get.todays.date()`| Unchanged |

## Included in the .RData file for boats

| Function           | Status |
| -------------    |:-------------|
|`split.character.string()`| Used for posix dates |
|`get.todays.date()`| Unchanged |
|`get.sunrise.sunset()` | New Siple version has replaced old version  |

***

## Code files for the GOA survey planning and execution

This repository contains code that I have been testing and adjusting. It is mainly to keep track of changes for version control. These are R code files that would be found on G:/GOA/GOA 2021/Files for boats/. 

Note: Once I am done working on these, the files should be located in two directories:

> G:/GOA/GOA 2021/Files for boats/sunrise sunset

> G:/GOA/R/sunrise sunset/

## Changes made to all functions
I made some changes to better document all the functions I have worked on:

* Change function names to include the package name, e.g., replace `SpatialPoints()` with `sp::SpatialPoints()`. This makes it so that you don't have to explicitly laod the libraries before running the code. 

* Add a roxygen skeleton with input and output definitions. This will be most useful if the function is included in a package but is useful in the time being because it makes explicit what the inputs are, the format of inputs and outputs, and other stuff.

## `get.sunrise.sunset()`
This code takes latitude and longitude and returns the expected sunrise and sunset time. The script `test_sunrise_sunset.R` contains some code for testing this function.

### Changes made from G Drive version

All the changes above, plus:

* changed pop up windows so they work in RStudio (not base R)

* Added a text output that prints in console even after the user has seen the pop-up window.

* Added an option where the user can put in degrees and decimal minutes instead of decimal degrees (the default). They just have to put them in quotes with a space separating the degrees and decimal mins (e.g., `latitude = "47 36.3726"`)




