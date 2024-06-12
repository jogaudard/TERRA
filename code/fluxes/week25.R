# I am not sure if we want to have one file per campaign or do everything with the same arguments
# Since the conditions might change I feel that one file per campaing can be smart

# download the data from OSF using data dataDownloader

# read them, eventually select columns, rename coloumns (depends on the logger settings)
# use read_delim or read_csv
# read also the field record with the time of each measurements and the metadata

# merge data from both loggers?

# use fluxible to calculate fluxes

# use flux_match to match the field record and the concentration data


# fux_fitting to fit a model to the concentration over time and calculate a slope


# flux_quality and flux_plot to check the quality and see if we need to modify anything


# flux_calc to calculate the fluxes


# once the clean dataset is there, do not forget to upload it in the clean_data folder on OSF
# (we avoid doing this automatically because we do not want to take the risk to overwrite the data on OSF in case we messed up something)