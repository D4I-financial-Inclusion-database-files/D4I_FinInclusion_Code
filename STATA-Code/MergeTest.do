import delim "https://raw.githubusercontent.com/open-numbers/ddf--gapminder--gapminder_world/master/ddf--datapoints--aged_65plus_labour_force_participation_rate_percent--by--geo--time.csv", clear delim(",") varn(1) charset("utf8")
save "\\Client\C$\Users\hamza\Desktop\D4I Project\65+ Labor.dta"
import delim "https://raw.githubusercontent.com/open-numbers/ddf--gapminder--gapminder_world/master/ddf--datapoints--co2_emissions_tonnes_per_person--by--geo--time.csv", clear delim(",") varn(1) charset("utf8")
merge 1:1 geo time using "\\Client\C$\Users\hamza\Desktop\D4I Project\65+ Labor.dta"
// The first 2 lines imports and saves one dataset (This step will be different later on)
// The third step imports the new dataset from GitHub
// The last step merges the 2 datasets together
