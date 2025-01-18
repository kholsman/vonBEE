# Load raw data from .csv file
# exampleData <- read.csv("data-raw/simulated-data.csv")
load("data-raw/LWAdat.rda")
LWA <- LWAdat
# Apply preprocessing...
# Save the cleaned data in the required R package location
#usethis::use_data(exampleData)
usethis::use_data(LWA,overwrite = TRUE)

load("data-raw/diet_p4CEATTLE.Rdata")

usethis::use_data(diet_p,overwrite = TRUE)

col_ramp <- colorRampPalette(c(brewer.pal(11,"Spectral")[c(3,9)],brewer.pal(11,"RdBu")[11]))
col      <- col_ramp(7)[c(4,1,6)]

usethis::use_data(col_ramp,overwrite = TRUE)

usethis::use_data(col,overwrite = TRUE)
