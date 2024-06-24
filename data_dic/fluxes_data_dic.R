library(dataDocumentation)
library(tidyverse)
# get_started(path = "data_dic")

description_table <- read_csv("data_dic/description_table.csv")
fluxes_CO2 <- read_csv("clean_data/fluxes_CO2.csv")
fluxes_CH4 <- read_csv("clean_data/fluxes_CH4.csv")

fluxes <- bind_rows(fluxes_CO2, fluxes_CH4)

data_dic_fluxes <- make_data_dictionary(data = fluxes_CO2,
                                 description_table = description_table,
                                 table_ID = "CO2",
                                 keep_table_ID = TRUE)




data_dic_fluxes
