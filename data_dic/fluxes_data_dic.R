library(dataDocumentation)
# get_started(path = "data_dic")

data_dic_fluxes <- make_data_dictionary(data = biomass,
                                 description_table = description_table,
                                 table_ID = "biomass",
                                 keep_table_ID = FALSE)