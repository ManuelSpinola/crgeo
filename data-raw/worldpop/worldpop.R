## Code to prepare datasets from worldpop

library(sf)
library(stars)
library(raster)
library(terra)
library(geodata)
library(rnaturalearth)
library(rmapshaper)

# Population density of Costa Rica 2020

cr_pop_density_2020_1km <- read_stars("data-raw/worldpop/cri_pd_2020_1km.tif")

usethis::use_data(cr_pop_density_2020_1km, overwrite = TRUE)

# Population density of Costa Rica continental

cr_pop_density_2020_1km_c <- st_crop(cr_pop_density_2020_1km, cr_outline_c)

usethis::use_data(cr_pop_density_2020_1km_c, overwrite = TRUE)

