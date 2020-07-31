#### Title: 2020 ANES Cleaning: Rename Sex Variable ####

#### Notes: ####
### Description: Simple Cleaning of dataset by Renaming Sex Variable ###

rename.male <- function(x){
  x <- x %>% rename(male = sex)
}