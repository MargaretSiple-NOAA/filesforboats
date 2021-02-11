# filesforboats

## Functions I've worked on so far:
`get.sunrise.sunset()`

`pick.date()` (don't know what distinguishes this from the `get.sunrise.sunset()` function)

## Code files for the GOA survey planning and execution.

This repository contains code that I (Megsie) have been testing and adjusting. It is mainly to keep track of changes for version control. These are R code files that would be found on G:/ALEUTIAN/AI 2020/Files for boats/~. 

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




