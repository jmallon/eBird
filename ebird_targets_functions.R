# eBird life and year targets

## functions
  fix_spp <- function(x){
    spp<-x$Species %>% strsplit(" - ")
    spp<-data.frame(matrix(unlist(spp), nrow=length(spp), byrow=T))
    names(spp)<-c("comName", "sciName")    #column names that match the ebird api columns
    spp$comName<-as.character(spp$comName)
    spp$sciName<-as.character(spp$sciName)
    y<-data.frame(spp,x[,3:8])
    return(y)
  }

  ebird_targets <- function(life, year, api_key, lat, lng, 
                            max =500, includeProvisional = TRUE, 
                            hotspot = FALSE, back = 3){
    require(rebird)
    
    lifelist<-fix_spp(lifelist)
    yearlist<-fix_spp(yearlist)
  
    local_sightings<-ebirdgeo(lat = lat, lng = lng, max = max, 
                              includeProvisional = includeProvisional, 
                              hotspot = hotspot, key=api_key, back = back)
    
    targets <- local_sightings[!duplicated(local_sightings[,c("sciName","locName")]),]
    targets <- targets[-grep("sp.",targets$sciName),]
    
    life_targets <- anti_join(targets, lifelist, by=c("comName","sciName"))
    year_targets <- anti_join(targets, yearlist, by=c("comName","sciName"))
    
    return(list(life_targets, year_targets))
  }

