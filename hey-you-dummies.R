#### Title: 2020 ANES Cleaning: Cleaning Dummy Variables ####

#### Notes: ####
### Description: Simple Cleaning of dataset by Dummy variables (moving from 1 & 2 to 0 & 1) ###

norm.dummy <- function(x){
  x <- mutate_at(x,
              vars(turnout16a1, turnout16b,antirelig1, antirelig2, racist1,racist2,transmilit1a,compro1,childrear1, childrear2,childrear3,childrear4,mis_covid1,mis_covid2,att1,latin1,knowtran1,knowgay1,exptravel_ever, exphomesch,expconvert,expshark,exparrest,exppubasst,expfight,expavoid,callout_social,callout_person,expknowimmig,expbuyus,expretire,expknowpris,sex),
              list(~ ifelse(. == 1, 1,
                            ifelse(. == 2, 0, NA))
                   )
              )
}

