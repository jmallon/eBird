# eBird

## Web scraping of eBird.org using Selenium through Python.   

Set-up for Selenium instructions provided here:  
- Windows Command Line  
> cd C:\Python27\Scripts  
> pip install selenium  

*if update is necessary:*  
  > cd C:\Python27  
  > python -m pip install --upgrade pip  

- Mac  

-----
## Functions

### Target Species

Objective: produce species and observation lists specific to user's location and 'List' (e.g. personal life or year lists)  

1) Species Today - compares species seen in the last 24 hours to your List  
2) Recent Species - compares last 100 species seen to your List 

*import of personal lists .csv files is required. These can be accessed via MyeBird
**This differs from eBird's 'target species' lists by allowing comparison to any user-provided list (e.g. country or world life list in a single county)


### Hotspot Finder

Objective: find nearest and most recent observations of a list of species, ranking hotspots by the most species matches  

1) Nearest - zip code defined by user, default set to 25 miles
2) Recent - defined by user, default set to last 7 days


### Travel Itinerary

Objective: find and rank hotspots that are likely to have species that match a list (e.g. target species), in a future time period

1) Nearest - defined by user, default set to 25 miles
2) Recent - defined by user, default set to 7 days
-----
/end

