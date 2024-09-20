library(ggplot2)
library(dplyr)
library(ggforce)

#make one big file of CH4 fluxes
fluxes_CH4_all <- full_join(fluxes_CH4_25, fluxes_CH4_27) |>
  full_join(fluxes_CH4_29) |>
  full_join(fluxes_CH4_31) |>
  full_join(fluxes_CH4_33) |>
  full_join(fluxes_CH4_35)

#export this df to csv
write.csv(fluxes_CH4_all, "clean_data/fluxes_CH4.csv")

#same for CO2 fluxes
fluxes_CO2_all <- full_join(fluxes_CO2_25, fluxes_CO2_27) |>
  full_join(fluxes_CO2_29) |>
  full_join(fluxes_CO2_31) |>
  full_join(fluxes_CO2_33) |>
  full_join(fluxes_CO2_35)

#export this df to csv
write.csv(fluxes_CO2_all, "clean_data/fluxes_CO2.csv")

##START IF NO CHANGES HAVE BEEN MADE TO DATA PROCESSING 
fluxes_CH4_all <- read.csv("clean_data/fluxes_CH4.csv")
fluxes_CO2_all <- read.csv("clean_data/fluxes_CO2.csv")

#Note, output of fluxes is mmol/m2/h for CO2 and µmol/m2/h for CH4
#Time to make some plots
#CH4 fluxes per plot per treatment

# Filter the data to include only 'flux' values between 0 and 5000
filtered_fluxes_CH4_all <- fluxes_CH4_all |>
  filter(flux > -500 & flux < 3000) |>
  mutate(flux = flux/3600)

# Create the plot with filtered data
CH4_fluxes_plot <- ggplot(filtered_fluxes_CH4_all,
                          aes(
                            x = SITE,
                            y = flux,
                            colour = SITE
                          )) +
  geom_sina() +
  labs(y = 'CH4 flux (µmol/m2/s)')

print(CH4_fluxes_plot)

#Same but CO2
filtered_fluxes_CO2_all <- fluxes_CO2_all |>
  filter(flux > -10 & flux < 10)

CO2_fluxes_plot <- ggplot(filtered_fluxes_CO2_all,
                          aes(
                            x = SITE,
                            y = flux,
                            colour = SITE
                          )) +
  geom_sina() +
  labs(y = 'CO2 flux (mmol/m2/s)')

print(CO2_fluxes_plot)


#Ch4 fluxes over time per treatment
CH4_fluxes_over_time <- ggplot(fluxes_CH4_all,
                               aes(
                                 x = datetime,
                                 y = flux,
                               )) +
  geom_point() +
  facet_grid(rows = vars(TYPE), cols = vars(PLOT_ID))
plot(CH4_fluxes_over_time)
