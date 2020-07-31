#### Title: 2020 ANES Cleaning: Centering the Scales around zero ####

#### Notes: ####
### Description: Simple Cleaning of dataset by flipping scales (pos == higher values, neg == lower values)###



center.three.item <- function(x){
  x <- mutate_at(x,
                 vars(voterid1, voterid2, turnout16a, vote16, primaryvote,pidlean, relig2a,femid1a,femid1b),
                 list(~ ifelse(. == 1, 1,
                               ifelse(. == 2, -1,
                                      ifelse(. == 3, 0, NA)))
                 )
  )
}

center.five.item <- function(x){
  x <- mutate_at(x,
                 vars(votecount,votemail2,dtleader1,dtleader2,dtcares,dtdignif,dthonest,dtauth,dtdiv,dtknow,jbleader1,jbleader2,jbcares,jbdignif,jbhonest,jbauth,jbdiv,jbknow,bsleader1,bsleader2,bscares,bshonest,bsauth,bsdiv,bsknow,econnow,finworry,confecon,richpoor2,regulate1,mutual,pathway,return,open,hlthcare2,covid1,covid2,abort_imp,harass, experts, science, exphelp, excessive,compro2,selfcensor,conf_covid1,conf_covid2,pidstr1,pidstr2,pidstr3,rr1,rr2,rr3,rr4,fundmt2,impact2,impact5,impact7,impact8,impact9,groupid2a_lat,groupid2a_whi,groupid2a_bla,groupid2a_asi,groupid2a_nat,groupid2a_hpi,groupid3a_lat,groupid3a_whi,groupid3a_bla,groupid3a_asi,groupid3a_nat,groupid3a_hpi,groupid1b_lat,groupid1b_whi,groupid1b_bla,groupid1b_asi,groupid1b_nat,groupid1b_hpi,groupid2b_lat,groupid2b_whi,groupid2b_bla,groupid2b_asi,groupid2b_nat,groupid2b_hpi,groupid3b_lat,groupid3b_whi,groupid3b_bla,groupid3b_asi,groupid3b_nat,groupid3b_hpi,femid2_fem,femid2_anti,femid2_nei,callout1,speech1,callout2,speech2,forgive2a,forgive2b,divmoral,forgive3,moralsup1,duepro3,moralcert3,forgive5,intelsup1,moralcert1,duepro4,moralcert6,forgive4,moralcert2,duepro1,callout3a,callout3b,moralsup2,duepro2,intelsup2,duepro5,moralcert4,forgive6,moralcert5,selfmon1,selfmon3,selfmon5,viol1,viol2a,viol2b,serious),
                 list(~ ifelse(. == 1, -2,
                               ifelse( .== 2, -1, 
                                       ifelse(. == 3, 0,
                                              ifelse(. == 4, 1,
                                                     ifelse(. == 5, 2, NA)))))))
}

center.seven.item <- function(x){
  x <- mutate_at(x,
                 vars(votemail1a,votemail1b,talk2,talk3,apppres7,frnpres7,immpres7,econpres7,covidpres7,healthcarepres7,check,taxecon,billtax1,billtax2,guarinc1,guarinc2,lcself,lcd,lcr,freemkt2,freemkt3,govsize2,govsize3,regulate2,ineqinc1a,strpres1a,strpres1b,tol_rally,tol_pres,tol_teach,immignum,wall7,affact,hlthcare1,abort2,gayadopt,transmilit1b,freecol1,freecol2,loans1,loans2,diversity7,rural2,rural3,rural4,impeach1,impeach2,impact1,forgive1a,forgive1b,forgive2b,whites_1,whites_2,whites_3,whites_4,whites_5,whites_6,whites_7, blacks_1,blacks_2,blacks_3,blacks_4,blacks_5,blacks_6,blacks_7,hisp_1,hisp_2,hisp_3,hisp_4,hisp_5,hisp_6,hisp_7,asians_1,asians_2,asians_3,asians_4,asians_5,asians_6,asians_7, pid7),
                 list(~ ifelse(. == 1, -3,
                               ifelse(. == 2, -2,
                                      ifelse(. == 3, -1,
                                             ifelse(. == 4, 0,
                                                    ifelse(. == 5, 1,
                                                           ifelse(. == 6, 2,
                                                                  ifelse(. == 7, 3, NA)
                                                           )
                                                    )
                                             )
                                      )
                               )
                 )
                 )
  )
}