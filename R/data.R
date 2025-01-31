#' @title Diet data and plots for the EBS
#'
#' @description A data set with the scores of two groups.
#'
#' @format A list with three objects
#' \describe{
#'   \item{data}{diet proportions by weight of key prey items in the diet of each predator}
#'   \item{plot}{Diet proportion plot}
#'   \item{prey}{Colors for each prey item for plotting}
#' }
#' @source K. Holsman et al. 2024
"diet_p"

#' @title Length Weight and Age data
#'
#' @description Length Weight and Age data from summer ground surveys conducted by the NOAA NMFS Alaska Fisheries Science Center
#'
#' @format A dataframe with the following columns
#' \describe{
#'   \item{REGION}{Alaska basing (GOA, AI, or BS)}
#'   \item{YEAR}{Year of the survey}
#'   \item{CRUISE_TYPE}{Specifying the survey cruise}
#'   \item{HAULJOIN}{Internally joining unique ID}
#'   \item{STATIONID}{Survey station}
#'   \item{STRATUM}{Survey stratum}
#'   \item{age}{Age of the fish in years}
#'   \item{weight}{Weight of the fish in grams}
#'   \item{Temp}{Bottom temperature at the survey location}
#'   \item{SPECIES_CODE}{Internal code to match species info}
#'   \item{CN}{Common name}
#'   \item{SN}{Species name}
#'   \item{Sp}{Secondary common name}
#'
#' }
#' @source K. Holsman et al. 2024
"LWA"

#' @title colors for plotting
#'
#' @description Three colors for color ramp plotting
#'
#' @format A unnamed character string
#' @source K. Holsman et al. 2024
"col"

#' @title mean Length Weight and Age data for Bering Sea walleye pollock
#'
#' @description Length Weight and Age data from summer ground surveys conducted by the NOAA NMFS Alaska Fisheries Science Center
#'
#' @format A dataframe with the following columns
#' \describe{
#'   \item{REGION}{Alaska basing (GOA, AI, or BS)}
#'   \item{YEAR}{Year of the survey}
#'   \item{STRATUM}{Survey stratum}
#'   \item{LAT}{Survey station LAT}
#'   \item{LON}{Survey station LAT}
#'   \item{CRUISE_TYPE}{Specifying the survey cruise}
#'   \item{SPECIES_NAME}{Internal code to match species info}
#'   \item{COMMON_NAME}{Common name}
#'   \item{SPECIES_NAME}{Species name}
#'   \item{mnWEIGHT}{mean Weight of the fish in grams}
#'   \item{mnLENGTH}{mean Length of the fish in mm}
#'   \item{mnAGE}{mean Age of the fish in years}
#'   \item{mnSST}{mean sea surface temperature at the survey location}
#'   \item{mnBT}{mean bottom temperature at the survey location}
#'   \item{sdWEIGHT}{standard deviation of the Weight of the fish in grams}
#'   \item{sdLENGTH}{standard deviation of the  Length of the fish in mm}
#'   \item{sdAGE}{standard deviation of the  Age of the fish in years}
#'   \item{sdSST}{standard deviation of the  sea surface temperature at the survey location}
#'   \item{sdBT}{standard deviation of the  bottom temperature at the survey location}
#'   \item{nobs}{number of observations for the sample}
#'
#' }
#' @source K. Holsman et al. 2024
"mnLWA"
