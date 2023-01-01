## Code to get elevation data for Costa Rica

library(sf)
library(stars)
library(terra)
library(geodata)
library(rnaturalearth)
library(rmapshaper)
library(here)

# Elevation data of Costa Rica from the geodata package

elevation_30s(country = "CRI", path = "data-raw/elevation")

cr_elevation <- read_stars(here("data-raw/elevation/CRI_elv_msk.tif"))

usethis::use_data(cr_elevation, overwrite = TRUE)

# Elevation data of continental Costa Rica from the geodata package

cr_elevation_c <- st_crop(cr_elevation, cr_outline_c)

usethis::use_data(cr_elevation_c, overwrite = TRUE)
