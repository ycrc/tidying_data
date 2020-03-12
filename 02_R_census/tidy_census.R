library(c("tidyverse", "readxl"))
census_xlsx <- read_excel("nst-est2019-01.xlsx")
head(census_xlsx)

# why is my data garbage? look at xlsx

census_xlsx <- read_excel("nst-est2019-01.xlsx", range = "A4:M62")

census_xlsx %>%
    rename(Region = ...1) %>%
    drop_na() %>%
    select(-one_of(c("Census", "Estimates Base"))) %>%
    gather(`2010`:`2019`, key = year, value = pop_estimate) %>%
    mutate(year = as.integer(year))

# mostly fixed, tidy?
# how would you filter the regions so that there are just states left?
# how would you rename the states so their names don't start with "." anymore?
