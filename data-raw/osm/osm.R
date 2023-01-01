## Code to get osm data for Costa Rica

library(sf)
library(stars)
library(terra)
library(geodata)
library(rnaturalearth)
library(rmapshaper)
library(here)

# OpenStreetMap places for Costa Rica

osm(country = "CRI", var = "places", path = "data-raw/osm")

cr_osm_places <- st_read(here("data-raw/osm/CRI_places.gpkg"))

usethis::use_data(cr_osm_places, overwrite = TRUE)

# OpenStreetMap highways for Costa Rica

osm(country = "CRI", var = "highways", path = "data-raw/osm")

cr_osm_highways <- st_read(here("data-raw/osm/CRI_highways.gpkg"))

usethis::use_data(cr_osm_highways, overwrite = TRUE)

# OpenStreetMap railway for Costa Rica

osm(country = "CRI", var = "railway", path = "data-raw/osm")

cr_osm_railway <- st_read(here("data-raw/osm/CRI_railway.gpkg"))

usethis::use_data(cr_osm_railway, overwrite = TRUE)


