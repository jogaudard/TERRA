library(dplyr)
library(ggplot2)


##CH4
# Ensure the flux column is numeric
filtered_fluxes_CH4_all$flux <- as.numeric(filtered_fluxes_CH4_all$flux)

# Initialize an empty data frame to store t-test results
ttest_results_CH4 <- data.frame()

# Unique combinations of SITE and TYPE
unique_combinations <- filtered_fluxes_CH4_all |> 
  select(SITE, TYPE) |> 
  distinct()

# Loop through each combination of SITE and TYPE
for (i in 1:nrow(unique_combinations)) {
  
  # Filter data for each SITE and TYPE combination
  subset_data <- filtered_fluxes_CH4_all |> 
    filter(SITE == unique_combinations$SITE[i], TYPE == unique_combinations$TYPE[i])
  
  # Extract flux data for control plot (PLOT_ID == "C")
  control_flux <- subset_data |> filter(PLOT_ID == "C") |> select(flux) |> unlist()
  
  # Unique PLOT_IDs other than control
  plot_ids <- subset_data |> 
    filter(PLOT_ID != "C") |> 
    select(PLOT_ID) |> 
    distinct() |> 
    unlist()
  
  # Perform t-test between control and each plot ID separately
  for (plot in plot_ids) {
    # Extract flux data for current plot
    plot_flux <- subset_data |> filter(PLOT_ID == plot) |> select(flux) |> unlist()
    
    # Perform the t-test
    t_test <- t.test(control_flux, plot_flux)
    
    # Store results in the dataframe
    ttest_results_CH4 <- rbind(ttest_results_CH4, data.frame(
      SITE = unique_combinations$SITE[i],
      TYPE = unique_combinations$TYPE[i],
      Control_Plot = "C",
      Comparison_Plot = plot,
      t_statistic = t_test$statistic,
      p_value = t_test$p.value,
      mean_control = mean(control_flux),
      mean_comparison = mean(plot_flux)
    ))
  }
}
print(ttest_results_CH4)

##CO2
# Ensure the flux column is numeric
filtered_fluxes_CO2_all$flux <- as.numeric(filtered_fluxes_CO2_all$flux)

# Initialize an empty data frame to store t-test results
ttest_results_CO2 <- data.frame()

# Unique combinations of SITE and TYPE
unique_combinations <- filtered_fluxes_CH4_all |> 
  select(SITE, TYPE) |> 
  distinct()

# Loop through each combination of SITE and TYPE
for (i in 1:nrow(unique_combinations)) {
  
  # Filter data for each SITE and TYPE combination
  subset_data <- filtered_fluxes_CO2_all |> 
    filter(SITE == unique_combinations$SITE[i], TYPE == unique_combinations$TYPE[i])
  
  # Extract flux data for control plot (PLOT_ID == "C")
  control_flux <- subset_data |> filter(PLOT_ID == "C") |> select(flux) |> unlist()
  
  # Unique PLOT_IDs other than control
  plot_ids <- subset_data |> 
    filter(PLOT_ID != "C") |> 
    select(PLOT_ID) |> 
    distinct() |> 
    unlist()
  
  # Perform t-test between control and each plot ID separately
  for (plot in plot_ids) {
    # Extract flux data for current plot
    plot_flux <- subset_data |> filter(PLOT_ID == plot) |> select(flux) |> unlist()
    
    # Perform the t-test
    t_test <- t.test(control_flux, plot_flux)
    
    # Store results in the dataframe
    ttest_results_CO2 <- rbind(ttest_results_CO2, data.frame(
      SITE = unique_combinations$SITE[i],
      TYPE = unique_combinations$TYPE[i],
      Control_Plot = "C",
      Comparison_Plot = plot,
      t_statistic = t_test$statistic,
      p_value = t_test$p.value,
      mean_control = mean(control_flux),
      mean_comparison = mean(plot_flux)
    ))
  }
}
print(ttest_results_CO2)



