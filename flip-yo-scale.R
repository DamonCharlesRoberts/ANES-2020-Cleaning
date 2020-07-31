#### Title: 2020 ANES Cleaning: Scale Flipping ####

#### Notes: ####
### Description: Simple Cleaning of dataset by flipping scales (pos == higher values, neg == lower values)###
flip.three.item <- function(x){
  x <- mutate_at(x,
                 vars(govsize1b,freemkt1b),
                 list(~ ifelse(. == 3, 1, 
                               ifelse(. == 2, 2,
                                      ifelse(. == 1, 3, NA)))
                      )
                 )
}

flip.four.item <- function(x){
  x <- mutate_at(x, 
                 vars(follow, reg1, link_bla, link_his, link_asi, link_whi, link_hpi, link_nat,),
                 list(~ ifelse( . == 1, 4, 
                                ifelse(. == 2, 3, 
                                       ifelse( . == 3, 2, 
                                               ifelse( . == 4, 1, NA))) ))
         )
}

flip.five.item <- function(x){
  x <- mutate_at(x,
                 vars(votemail2, dtleader1, dtleader2, dtcares, dtdignif, dthonest, dtauth, dtdiv, dtknow, jbleader1, jbleader2, jbcares, jbdignif, jbhonest, jbauth, jbdiv, jbknow, bsleader1, bsleader2, bscares, bsdignif, bshonest, bsauth, bsdiv, bsknow, richpoor2,regulate1, mutual, pathway, return, open, covid1, covid2,abort_imp, pidstr1, att2, fundmt2, impact2,impact3,impact4,impact5,impact6,impact7,impact8,impact9,groupid1a_lat,groupid1a_whi,groupid1a_bla,groupid1a_asi,groupid1a_nat,groupid1a_hpi,groupid1b_lat,groupid1b_whi,groupid1b_bla,groupid1b_asi,groupid1b_nat,groupid1b_hpi,groupid2b_lat,groupid2b_whi,groupid2b_bla,groupid2b_asi,groupid2b_nat,groupid2b_hpi,groupid3b_lat,groupid3b_whi,groupid3b_bla,groupid3b_asi,groupid3b_nat,groupid3b_hpi,femid2_fem,femid2_anti,femid2_nei,stress1,stress2,stress3,stress4,depress1,depress2,depress3,depress4,depress5,callout1,speech1,callout2,speech2,forgive2a,selfmon1,selfmon2,selfmon3,selfmon4,selfmon5,selfmon6,viol1,harass),
                 list(~ ifelse(. == 1, 5,
                               ifelse(. == 2, 4,
                                      ifelse(. == 3, 3, 
                                             ifelse(. == 4, 2, 
                                                    ifelse(. == 5, 1, NA)))))
                      )
                 )
}

flip.seven.item <- function(x){
  x <- mutate_at(x,
                 vars(votemail1a,votemail1b,apppres7,frnpres7,immpres7,econpres7,covidpres7,healthcarepres7,check,taxecon,billtax1,billtax2,guarinc1,guarinc2,freemkt2,freemkt3,regulate2,ineqinc1a,strpres1a,strpres1b,tol_rally,tol_pres,tol_teach,immignum,wall7,affact,hlthcare1,abort2,gayadopt,transmilit1b,freecol1,freecol2,loans1,loans2,diversity7,rural2,rural3,rural4,impeach1,impeach2,facebook1,twitter1,impact1,forgive1a,forgive1b,forgive2b,whites_1,whites_2,whites_3,whites_4,whites_5,whites_6,whites_7, blacks_1,blacks_2,blacks_3,blacks_4,blacks_5,blacks_6,blacks_7,hisp_1,hisp_2,hisp_3,hisp_4,hisp_5,hisp_6,hisp_7,asians_1,asians_2,asians_3,asians_4,asians_5,asians_6,asians_7, pid7),
                 list(~ ifelse(. == 1, 7,
                               ifelse(. == 2, 6,
                                      ifelse(. == 3, 5,
                                             ifelse(. == 4, 4,
                                                    ifelse(. == 3, 5,
                                                           ifelse(. == 2, 6,
                                                                  ifelse(. == 1, 7, NA)
                                                                  )
                                                           )
                                                    )
                                             )
                                      )
                               )
                      )
                 )
}
