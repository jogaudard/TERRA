# I am not sure if we want to have one file per campaign or do everything with the same arguments
# Since the conditions might change I feel that one file per campaing can be smart

library(tidyverse)
library(dataDownloader)
library(lubridate)

source("code/fluxes/fun.R")

# download the data from OSF using data dataDownloader
get_file(node = "rba87",
         file = "Fieldnotes.csv",
         path = "raw_data",
         remote_path = "raw_data/ecosystem_fluxes")

get_file(node = "rba87",
         file = "CO2_CH4_2024-06-17.data",
         path = "raw_data/week25",
         remote_path = "raw_data/ecosystem_fluxes/Week_25")

get_file(node = "rba87",
         file = "CO2_CH4_2024-06-18.data",
         path = "raw_data/week25",
         remote_path = "raw_data/ecosystem_fluxes/Week_25")
get_file(node = "rba87",
         file = "CO2_CH4_2024-06-19.data",
         path = "raw_data/week25",
         remote_path = "raw_data/ecosystem_fluxes/Week_25")

get_file(node = "rba87",
         file = "PAR_Temp_2024-06-17.dat",
         path = "raw_data/week25",
         remote_path = "raw_data/ecosystem_fluxes/Week_25")

get_file(node = "rba87",
         file = "PAR_Temp_2024-06-18.dat",
         path = "raw_data/week25",
         remote_path = "raw_data/ecosystem_fluxes/Week_25")

get_file(node = "rba87",
         file = "PAR_Temp_2024-06-19.dat",
         path = "raw_data/week25",
         remote_path = "raw_data/ecosystem_fluxes/Week_25")

# read them, eventually select columns, rename coloumns (depends on the logger settings)
# use read_delim or read_csv
# read also the field record with the time of each measurements and the metadata

CO2_CH4_1 <- read_delim("raw_data/week25/CO2_CH4_2024-06-17.data", delim = "\t", skip = 5) |>
    filter(DATAH != "DATAU") |> #removing the line with the units
    mutate(
        DATE = ymd(DATE),
        TIME = hms(TIME),
        CO2 = as.double(CO2),
        CH4 = as.double(CH4),
        datetime = ymd_hms(paste(DATE, TIME)),
        remark = REMARK
    ) |>
    select(datetime, remark, CH4, CO2)

head(CO2_CH4_1)

# I wrote a function for that, no way I am copy pasting those lines everytime

CO2_CH4_2 <- import_CO2_CH4("raw_data/week25/CO2_CH4_2024-06-18.data")

# merge data from both loggers?

# use fluxible to calculate fluxes

# use flux_match to match the field record and the concentration data


# fux_fitting to fit a model to the concentration over time and calculate a slope


# flux_quality and flux_plot to check the quality and see if we need to modify anything


# flux_calc to calculate the fluxes


# once the clean dataset is there, do not forget to upload it in the clean_data folder on OSF
# (we avoid doing this automatically because we do not want to take the risk to overwrite the data on OSF in case we messed up something)