# Cleaning the American National Elections Study 2020 Exploratory Dataset


This dataset is huge with about 470 variables. I wrote files with functions to handle common and basic cleaning of the variables.

The key document that you should be concerned with is the get-clean-boi.R file where it sources the functions from the other files where you can then run those functions.

There might be other sorts of cleaning that you may want to do or measure construction - this only does basic cleaning like handling missing values, flipping scales, centering scales around zero, cleaning dummy variables, and making a respondent sex variable.

You will need to download the dataset separately from [ANES' Website](https://electionstudies.org/data-center/2020-exploratory-testing-survey/). In the set up file, the original file that I read in is the .dta file. If you want to use the .csv or .sav file that they offer you will need to make an adjustment in setup.R.
