# Load raw data from .csv file
# usethis::use_data_raw()
#datlist <- makefutR_data(fn=file.path("data-raw","in","futR_Inputs.xlsx"))
# load("data-raw/datlist.Rdata")
# rec <-  data.frame(readxl::read_xlsx(file.path("data-raw","in","futR_Inputs.xlsx") , sheet = "rec_data" ))

# Apply preprocessing...
# Save the cleaned data in the required R package location
load(file.path("data-raw","LWA.Rdata"))
mnLWA <- LWA%>%filter(REGION=="BS",CRUISE_TYPE=="Race_Groundfish",
                      COMMON_NAME=="walleye pollock",
                      is.na(WEIGHT)==F,WEIGHT>0, LENGTH>0, AGE>0)%>%
  group_by(REGION,YEAR,STRATUM,LAT=START_LATITUDE,LON = START_LONGITUDE,CRUISE_TYPE,SPECIES_NAME, COMMON_NAME)%>%
  summarize(mnLENGTH = mean(LENGTH,na.rm=T),
            mnWEIGHT = mean(WEIGHT,na.rm=T),
            mnAGE = mean(AGE,na.rm=T),
            mnSST = mean(SURFACE_TEMPERATURE,na.rm=T),
            mnBT  = mean(GEAR_TEMPERATURE,na.rm=T),
            sdLENGTH = sd(LENGTH,na.rm=T),
            sdWEIGHT = sd(WEIGHT,na.rm=T),
            sdAGE = sd(AGE,na.rm=T),
            sdSST = sd(SURFACE_TEMPERATURE,na.rm=T),
            sdBT  = sd(GEAR_TEMPERATURE,na.rm=T),
            nobs = length.na(LENGTH,na.rm=T))

# usethis::use_data(datlist, overwrite = T)
usethis::use_data(mnLWA, overwrite = T)
usethis::use_data(LWA, overwrite = T)
