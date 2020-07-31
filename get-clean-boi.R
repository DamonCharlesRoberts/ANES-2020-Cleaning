#### Title: 2020 ANES Cleaning: Script ####

#### Notes: ####

### Sourcing in functions from setup.R, missing-vals.R,flip-yo-scale.R,im-centered.R,hey-you-dummies.R,make-a-man-outta-you.R
### Description: Run Functions to clean the 2020 ANES Exploratory Study###

#### Sourcing the Functions ####
here::here()

source('setup.R')
source('missing-vals.R')
source('flip-yo-scale.R')
source('im-centered.R')
source('hey-you-dummies.R')
source('make-a-man-outta-you.R')

#### Run the Functions ####
anes.cleaned.0.1 <- drop.notneeded(anes.cleaned) # Drop some variables that aren't needed from the front
anes.cleaned.0.2 <- missing.vals(anes.cleaned.0.1) # Convert ANES values (e.g. 9, 99, 999) for missingness to NA
anes.cleaned.0.3 <- diff.form(anes.cleaned.0.2) # Convert ANES values (e.g. 6, 8, 7, 66, 77, 88) for N/A responses to NA
anes.cleaned.0.4 <- diff.form2(anes.cleaned.0.3) # "    "
anes.cleaned.0.5 <- not.applic(anes.cleaned.0.4) # "    "
anes.cleaned.0.6 <- flip.three.item(anes.cleaned.0.5) # Flip three item measures 
anes.cleaned.0.7 <- flip.four.item(anes.cleaned.0.6) # Flip four item measures from neg to pos
anes.cleaned.0.8 <- flip.five.item(anes.cleaned.0.7) # Flip five item measures from neg to pos
anes.cleaned.0.9 <- flip.seven.item(anes.cleaned.0.8) # Flip seven item measures from neg to pos
anes.cleaned.1.0 <- center.three.item(anes.cleaned.0.9) # Center three item measures around zero
anes.cleaned.1.1 <- center.five.item(anes.cleaned.1.0) # Center five item measures around zer
anes.cleaned.1.2 <- center.seven.item(anes.cleaned.1.1) # Center seven item measures around zero
anes.cleaned.1.3 <- norm.dummy(anes.cleaned.1.2) #Convert dummies from 1 & 2 to 0 & 1
anes.cleaned.1.4 <- rename.male(anes.cleaned.1.3) # Rename sex variable to male
