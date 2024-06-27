Readme
================
Joseph Gaudard
2022-06-14

## Data dictionaries

### CO<sub>2</sub> fluxes

``` r
knitr::kable(data_dic_fluxes_co2)
```

| TableID | Variable name  | Description                                                                                                                              | Variable type | Variable range or levels                  | Units               | How measured |
|:--------|:---------------|:-----------------------------------------------------------------------------------------------------------------------------------------|:--------------|:------------------------------------------|:--------------------|:-------------|
| CO2     | PAR_in_chamber | Mean Photosynthetic Active Radiation measured by the sensor placed inside the transparent chamber. Discarded for dark tube measurements. | numeric       | -0.107 - 1292.707                         | µmol s-1sqm-1       | measured     |
| CO2     | PAR_out        | Mean Photosynthetic Active Radiation measured by the sensor placed on a stick at one of the corners of the plot.                         | numeric       | 191.304 - 1434.4                          | µmol s-1sqm-1       | measured     |
| CO2     | T_out          | average soil temperature during the measurement                                                                                          | numeric       | 1.071 - 10.434                            | Celsius             | measured     |
| CO2     | f_start        | datetime of the start of the measurement                                                                                                 | date_time     | 2024-06-17 11:35:23 - 2024-06-19 14:52:30 | yyyy-mm-dd hh:mm:ss | recorded     |
| CO2     | SITE           | experimental site                                                                                                                        | categorical   | Dryas - Moss                              | NA                  | attributed   |
| CO2     | BLOCK          | block withing the experimental site                                                                                                      | categorical   | D2 - M8                                   | NA                  | attributed   |
| CO2     | PLOT_ID        | ID of the plot                                                                                                                           | categorical   | C - WG                                    | NA                  | attributed   |
| CO2     | WARMING        | warming treatment with open top chambers                                                                                                 | categorical   | control - otc                             | NA                  | attributed   |
| CO2     | GRUBBING       | simulated goose grubbing treatment                                                                                                       | categorical   | control - grubbing                        | NA                  | attributed   |
| CO2     | RAIN           | simulated rain on snow event treatment                                                                                                   | categorical   | control - ros                             | NA                  | attributed   |
| CO2     | TYPE           | type of measurement                                                                                                                      | categorical   | C - L                                     | NA                  | attributed   |
| CO2     | temp_air_ave   | average air temperature inside the chamber (respectively the dark tube) during the measurement                                           | numeric       | 6.543 - 20.152                            | Celsius             | measured     |
| CO2     | chamber        | chamber used                                                                                                                             | categorical   | dark_chamber - transparent_chamber        | NA                  | attributed   |
| CO2     | gas            | gas measured                                                                                                                             | categorical   | CO2 - CO2                                 | NA                  | attributed   |
| CO2     | f_slope_calc   | slope of the model that was used to calculated the flux                                                                                  | numeric       | -0.087 - 1.408                            | ppm s-1             | modelled     |
| CO2     | flux           | flux of CO2 exchanging between the ecosystem and the atmosphere                                                                          | numeric       | -0.273 - 3.501                            | mmol /m^-2 /hr-1    | calculated   |

### CH<sub>4</sub> fluxes

``` r
knitr::kable(data_dic_fluxes_ch4)
```

| TableID | Variable name  | Description                                                                                                                              | Variable type | Variable range or levels                  | Units               | How measured |
|:--------|:---------------|:-----------------------------------------------------------------------------------------------------------------------------------------|:--------------|:------------------------------------------|:--------------------|:-------------|
| CH4     | PAR_in_chamber | Mean Photosynthetic Active Radiation measured by the sensor placed inside the transparent chamber. Discarded for dark tube measurements. | numeric       | -0.108 - 1292.706                         | µmol s-1sqm-1       | measured     |
| CH4     | PAR_out        | Mean Photosynthetic Active Radiation measured by the sensor placed on a stick at one of the corners of the plot.                         | numeric       | 191.673 - 1434.165                        | µmol s-1sqm-1       | measured     |
| CH4     | T_out          | average soil temperature during the measurement                                                                                          | numeric       | 1.073 - 10.41                             | Celsius             | measured     |
| CH4     | f_start        | datetime of the start of the measurement                                                                                                 | date_time     | 2024-06-17 11:35:03 - 2024-06-19 14:52:10 | yyyy-mm-dd hh:mm:ss | recorded     |
| CH4     | SITE           | experimental site                                                                                                                        | categorical   | Dryas - Moss                              | NA                  | attributed   |
| CH4     | BLOCK          | block withing the experimental site                                                                                                      | categorical   | D2 - M8                                   | NA                  | attributed   |
| CH4     | PLOT_ID        | ID of the plot                                                                                                                           | categorical   | C - WG                                    | NA                  | attributed   |
| CH4     | WARMING        | warming treatment with open top chambers                                                                                                 | categorical   | control - otc                             | NA                  | attributed   |
| CH4     | GRUBBING       | simulated goose grubbing treatment                                                                                                       | categorical   | control - grubbing                        | NA                  | attributed   |
| CH4     | RAIN           | simulated rain on snow event treatment                                                                                                   | categorical   | control - ros                             | NA                  | attributed   |
| CH4     | TYPE           | type of measurement                                                                                                                      | categorical   | C - L                                     | NA                  | attributed   |
| CH4     | temp_air_ave   | average air temperature inside the chamber (respectively the dark tube) during the measurement                                           | numeric       | 6.601 - 19.937                            | Celsius             | measured     |
| CH4     | chamber        | chamber used                                                                                                                             | categorical   | dark_chamber - transparent_chamber        | NA                  | attributed   |
| CH4     | gas            | gas measured                                                                                                                             | categorical   | CH4 - CH4                                 | NA                  | attributed   |
| CH4     | f_slope_calc   | slope of the model that was used to calculated the flux                                                                                  | numeric       | -0.382 - 0.235                            | ppb s-1             | modelled     |
| CH4     | flux           | flux of CH4 exchanging between the ecosystem and the atmosphere                                                                          | numeric       | -1199.104 - 715.848                       | µmol /m^-2 /hr-1    | calculated   |
