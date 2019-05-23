# eBird life and year targets
# this function expands on the rebird package by removing duplicates and birds already in your year and life lists

## required data
  library(readr)
  library(dplyr)
  source('myfilepath/ebird_targets_functions.R')
  
  lifelist <- read_csv("myfilepath/ebird_world_life_list.csv")  # https://ebird.org/MyEBird?cmd=list&rtype=custom&r=world&time=life&fmt=csv
  yearlist <- read_csv("myfilepath/ebird_US_year_list.csv")     # For the USA https://ebird.org/MyEBird?cmd=list&rtype=country&r=US&time=year&fmt=csv
  api_key = 'myapikey'                                          # get api key at https://ebird.org/api/keygen
  lat = 38
  lng = -74

## get life and year target species
  ebird_targets(life, year, api_key, lat, lng, 
                max =500, includeProvisional = TRUE, 
                hotspot = FALSE, back = 3)
  