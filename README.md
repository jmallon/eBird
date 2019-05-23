# eBird life and year targets    
## This function expands on the [rebird](https://cran.r-project.org/web/packages/rebird/index.html) R package by removing birds already in your year and life lists.
### Also removes duplicate observations for readibility

### required packages
```
library(readr)    
library(dplyr)   
```
### [source the ebird_targets function](https://github.com/jmallon/eBird/blob/master/ebird_targets_functions.R)
    source('myfilepath/ebird_targets_functions.R')                

### import life and year lists from [eBird](ebird.org/myebird)
```
lifelist <- read_csv("myfilepath/ebird_world_life_list.csv")  
yearlist <- read_csv("myfilepath/ebird_US_year_list.csv")     
```
### get [api key](https://ebird.org/api/keygen)
```
  api_key = 'myapikey'
```

### set your lat and long
```
  lat = 38    
  lng = -74    
```

### get life and year target species
```
  ebird_targets(lifelist, yearlist, api_key, lat, lng, 
                max =500, includeProvisional = TRUE, 
                hotspot = FALSE, back = 3)    
```

for documentation, see ?ebirdgeo
