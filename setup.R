#### Title: 2020 ANES Cleaning: Setup ####

#### Notes: ####

### Description: Write set up functions to look at Enthusiasm for Trump and doing some data cleaning ###


#### Set Up ####
here::here()

setup <- function(){
  library(haven)
  library(tidyverse)
  library(dplyr)
}
setup()
anes.orig <- read_dta('../anes_pilot_2020ets_dta.dta')
