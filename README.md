# CELLDEX2018

Data and code associated with the manuscript:
SD Tiegs, DM Costello, MW Isken, G Woodward, PB McIntyre, MO Gessner, E Chauvet, NA Griffiths, AS Flecker, et al. *Global patterns and drivers of ecosystem functioning in rivers and riparian zones*.

Data files include:
* Raw tensile strength measurements from replicate cotton strips 
  * CELLDEX_TENSILE_DATA.csv
* Site characteristics for deployment locations including lat/long and dominant biome 
  * CELLDEX_SITE_DATA.csv
* Summarized temperature data from sites where loggers were deployed. For more information on temperature data processing contact Mark Isken (isken@oakland.edu)
  * CELLDEX_TEMPERATURE.csv
* Derived decomposition rates separated out by habitat (i.e., stream/river or riparian) and rate calculation (raw or temperature-corrected). 
  * Raw rates (1/d) from riparian zones: rip_k.csv
  * Raw rates (1/d) from streams/rivers: str_k.csv
  * Temperature corrected rates (1/degree day) from riparian zones: rip_k_dd.csv
  * Temperature corrected rates (1/degree day) from streams/rivers: str_k_dd.csv

- All data is linked with a numerical code to ID partners (1-135) and a numerical code to identify streams (1-8).
- Metadata for datafiles is below

Code files include:
* Bayesian hierarchical models (JAGS) to derive decomposition rates from raw tensile strength measurements.
  * k models.Rmd
* Bayesian models and quantile regression to relate decomposition rates to biome classification, latitude, and temperature.
  * biome lat temp models.Rmd
  
Metadata:

__CELLDEX_TENSILE_DATA.csv__

|Parameter     |Definition   |Units  |
| ------------- |-----------| -----|
|partnerid| Partner number||
| stream | Stream index number |  |
| habitat | Cotton strip location |  |
| block | Location block (D=downstream, U=upstream) |  |
|maxT|Maximum tensile stength| lbs|
|stripid|Unique strip ID code ||

__CELLDEX_SITE_DATA.csv__

|Parameter     |Definition   |Units  |
| ------------- |-----------| -----|
|partnerid| Partner number||
|stream | Stream index number |  |
|latitude|Site latitude |decimal degrees|
|longitude|Site longitude |decimal degrees|
|deploy_time|Length of cotton strip deployment|day|
|biome|Dominant biome at site (World Wildlife Fund classification)||
|biome_short|shortened biome code||

__CELLDEX_TEMPERATURE.csv__

|Parameter     |Definition   |Units  |
| ------------- |-----------| -----|
|partnerid| Partner number| |
|stream | Stream index number |  |
|habitat | Cotton strip location |  |
|block | Location block (D=downstream, U=upstream, na=not specified) | |
|num_days|Length of temp sensor deployment|day|
|tot_temp_readings|Count of temperature readings|#|
|mean_mean_daily_temp|Mean of mean daily temperature|°C|
|sd_mean_daily_temp|Standard deviation of mean daily temp|°C|
|sensor_coverage|Proportion of cotton strip deployment time with temp data|Proportion|
|deg_days_adj|Degree days adjusted for sensor coverage|degree days|

Data from riparian zones __rip_k.csv__ 

Data from stream/river channel __str_k.csv__

|Parameter     |Definition   |Units  |
| ------------- |-----------| -----|
|partnerid| Partner number| |
|str.part | Combined partner and stream numbers |  |
|k | Decomposition rate | 1/day |

Data from riparian zones __rip_k_dd.csv__ 

Data from stream/river channel __str_k_dd.csv__

|Parameter     |Definition   |Units  |
| ------------- |-----------| -----|
|partnerid| Partner number| |
|str.part | Combined partner and stream numbers |  |
|k | Decomposition rate | 1/degree day |

