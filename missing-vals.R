#### Title: 2020 ANES Cleaning: Missing Values Cleaning ####

#### Notes: ####
### Description: Simple Cleaning of dataset by cleaning missing values ###

anes.cleaned <- as_tibble(anes.orig)

drop.notneeded <- function(x){
  x <- select(x,
         -c(qmetadata_Browser,
            qmetadata_Version,
            qmetadata_Resolution))
}

missing.vals <- function(x,y){
x <- mutate_at(x,
               vars(follow, votecount, votemail2, voterid1, voterid2, turnout16a1, vote16, hopeful,worried, irritated, meeting, moneyorg, protest, online, persuade, button, moneycand, argument, particip_none, talk3, primaryvote, vote20jb, vote20bs, cvote2020, apppres7, frnpres7, immpres7, econpres7, healthcarepres7, dtcares, dtdignif, dtauth, dtdiv, dtknow, jbleader1, jbleader2, jbcares, jbdignif, jbhonest, jbauth, jbdiv, jbknow, bsleader1, bsleader2, bscares, bsdignif, bshonest, bsauth, bsdiv, bsknow, finworry, confecon, taxecon, richpoor2, lcd, lcr, freemkt1a, freemkt1b,  govsize1a, govsize1b, govsize2, govsize3,regulate2, ineqinc1a, strpres1b,tol_rally, tol_pres, tol_teach, antirelig1, antirelig2, racist1, racist2, immignum, wall7, pathway, return, open, affact, hlthcare1, hlthcare2, covid1, covid2, covid_elect,abort1,abort_imp, abort2, gayadopt, transmilit1a, transmilit1b, harass, freecol2, diversity7, experts, science, exphelp, excessive, compro1, compro2, pcorrect, selfcensor, childrear1, childrear2, childrear3, rural2, rural3, rural4, mis_covid1, conf_covid1, mis_covid2, conf_covid2, impeach1, impeach2, pid1r, pid2r, pidstr, pidlean, pidstr1, pidstr2, pidstr3, rr1, rr2, rr3, rr4,relig2b, att1, att2, att3, fundmt1, fundmt2, impact1, impact2, impact3, impact4, impact5, impact6, impact7, impact8, impact9, ethnic3, latin1,groupid1a_lat, groupid2a_lat, groupid3a_lat, groupid1a_whi, groupid1a_bla, groupid1a_nat, groupid1a_asi, groupid1a_hpi, groupid2a_whi, groupid2a_bla, groupid2a_nat, groupid2a_asi, groupid2a_hpi, groupid3a_whi, groupid3a_bla, groupid3a_nat, groupid3a_asi, groupid3a_hpi, groupid1b_lat, groupid2b_lat, groupid3b_lat, groupid1b_whi, groupid1b_bla, groupid1b_nat, groupid1b_asi, groupid1b_hpi, groupid2b_whi, groupid2b_bla, groupid2b_nat, groupid2b_asi, groupid2b_hpi, groupid2b_whi, groupid3b_bla, groupid3b_nat, groupid3b_asi,groupid3b_hpi, whitejob, femid1a, femid1b, femid2_fem, femid2_anti, femid2_nei, knowtran1, knowtran2_1, knowtran2_2, knowtran2_3, knowtran2_4, knowtran2_5, knowtran2_6, knowgay1, knowgay2_1, knowgay2_2, knowgay2_3, knowgay2_4, knowgay2_5, knowgay2_6, stress1, stress2, stress3, stress4, depress1, depress2, depress3, depress4, depress5, callout1, speech1, callout2, speech2, forgive2a, forgive2b, forgive3, moralsup1, duepro3, moralcert3, forgive5, intelsup1, moralcert1, duepro4, moralcert6, forgive4, moralcert2, duepro1, callout3a, callout3b, moralsup2, duepro2, intelsup2, duepro5, moralcert4, forgive6, moralcert5, link_bla, link_his, link_whi, selfmon1, selfmon2, selfmon3, selfmon4, selfmon5, selfmon6,home_anes, home_cps, viol3_dems, viol3_reps, viol3_both, viol1, viol2a, viol2b, exptravel_ever, exphomesch, expconvert, expholiday, expshark, exparrest, exppubasst, expfight, expavoid, callout_social, callout_person, expknowimmig, expbuyus, expretire, expknowpris, birthyr, sex, marital1, pk_sen, pk_spend, whites_1, whites_2, whites_3, whites_4, whites_5, whites_6, whites_7, blacks_1, blacks_2, blacks_3, blacks_4, blacks_5, blacks_6, blacks_7, hisp_1, hisp_2, hisp_3, hisp_4, hisp_5, hisp_6, hisp_7, asians_1, asians_2, asians_3, asians_4, asians_5, asians_6, asians_7, dejavu, serious, INSTRUCTION_GROUP, FEEDBACK_GROUP, XGOVT, XFORGIVE, XCONTACT, RAND_INC, surv_comp, USIPAddress, age, home_ownership, vote20turnoutjb, pk_mauga_correct, pk_germ_correct, pk_cjus_correct, pk_sen_correct, pk_spend_correct, pk_cjus_correctb, pk_index, pidstr1_dr, pidstr1_ind, pidstr2_dr, pidstr2_ind, pidstr3_dr, pidstr3_ind, pid7, pid7str, hispanic, hispanic_white, nonhispanic_white, hispanicr, race1_white, race1_black, race1_namer, race1_asian, race1_hpi, rr_scale, white, black, namer, asian, hpi, mixed, race7, vidx, vidknow),
    list(~ ifelse( . == 9 | . == 99 | . == 999, NA, .))
  )
}

diff.form <- function(x){
x <- mutate_at(
  x,
    vars(votemail1a, votemail1b, covidpres7, healthcarepres7, dtleader1, dtleader2, jbleader1, jbleader2, bsleader1, bsleader2,billtax1, billtax2, guarinc1, guarinc2, freemkt2, freemkt3, govsize3, regulate1,regulate2,strpres1a,strpres1b, leastgrp, tol_rally, tol_pres, tol_teach, freecol1,freecol2,loans1,loans2, pid2r, facebook1, twitter1, forgive1a, forgive1b, forgive2a, forgive2b, whites_1, whites_2, whites_3, whites_4, whites_5, whites_6, whites_7, blacks_1, blacks_2, blacks_3, blacks_4, blacks_5, blacks_6, blacks_7, hisp_1, hisp_2, hisp_3, hisp_4, hisp_5, hisp_6, hisp_7, asians_1, asians_2, asians_3, asians_4, asians_5, asians_6, asians_7,),
    list(~ ifelse(. == 66 | . == 77 | . == 88, NA, .))
  )
}

diff.form2 <- function(x){
  x <- mutate_at(x,
                 vars(turnout16a, turnout16b, freemkt1a, freemkt1b, govsize1a, govsize1b, antirelig1, antirelig2, racist1, racist2, transmilit1a, transmilit1b, harass,selfcensor, pcorrect, relig2a, relig2b, race1a_1, race1a_2, race1a_3, race1a_4, race1a_5, race1b_1, race1b_2, race1b_3, race1b_4, race1b_5, groupid1a_lat, groupid3a_lat, groupid1a_whi, groupid1a_bla, groupid1a_nat, groupid1a_asi, groupid1a_hpi, groupid2a_whi, groupid2a_bla, groupid2a_nat, groupid2a_asi, groupid2a_hpi, groupid3a_whi, groupid3a_bla, groupid3a_nat, groupid3a_asi, groupid3a_hpi, groupid1b_lat, groupid2b_lat, groupid3b_lat, groupid1b_whi, groupid1b_bla, groupid1b_nat, groupid1b_asi, groupid1b_hpi, groupid2b_whi, groupid2b_bla, groupid2b_nat, groupid2b_asi, groupid2b_hpi, groupid2b_whi, groupid3b_bla, groupid3b_nat, groupid3b_asi,groupid3b_hpi, femid1a, femid1b, stress1, stress2, stress3, stress4, depress1, depress2, depress3, depress4, depress5, callout1, speech1, callout2, speech2, divmoral, forgive3, moralsup1, duepro3, moralcert3, forgive5, intelsup1, moralcert1, duepro4, moralcert6, forgive4, moralcert2, duepro1, callout3a, callout3b, moralsup2, duepro2, intelsup2, duepro5, moralcert4, forgive6, moralcert5, link_bla, link_his, link_whi, selfmon1, selfmon2, selfmon3, selfmon4, selfmon5, selfmon6, home_anes, home_cps, viol2a, viol2b,citizen1,citizen2),
    list(~ ifelse(. == 7 | . == 8, NA, .))
  )
}

not.applic <- function(x){
  x <- mutate_at(x,
                 vars(voterid2, pidstr, pidlean, pidstr1, pidstr2, pidstr3, relig2a, groupid3a_lat, groupid1a_whi, groupid1a_bla, groupid1a_nat, groupid1a_asi, groupid1a_hpi, groupid2a_whi, groupid2a_bla, groupid2a_nat, groupid2a_asi, groupid2a_hpi, groupid3a_whi, groupid3a_bla, groupid3a_nat, groupid3a_asi, groupid3a_hpi, groupid1b_lat, groupid2b_lat, groupid3b_lat, groupid1b_whi, groupid1b_bla, groupid1b_nat, groupid1b_asi, groupid1b_hpi, groupid2b_whi, groupid2b_bla, groupid2b_nat, groupid2b_asi, groupid2b_hpi, groupid2b_whi, groupid3b_bla, groupid3b_nat, groupid3b_asi,groupid3b_hpi, whitejob, femid2_fem, femid2_anti, femid2_nei, callout3a, callout3b, link_bla, link_his, link_asi, link_whi, link_hpi, link_nat, viol3_dems, viol3_reps, viol3_both,marital2, admit, pidstr1_dr, pidstr1_ind, pidstr2_dr, pidstr2_ind, pidstr3_dr, pidstr3_ind),
    list(~ ifelse( . == 6 | . == 7, NA, .))
  )
}

  