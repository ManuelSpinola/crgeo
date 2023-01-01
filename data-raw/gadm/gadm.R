## code to prepare datasets from gadm.org

library(sf)
library(stars)
library(terra)
library(geodata)
library(rnaturalearth)
library(rmapshaper)

# outline of Costa Rica from gadm.org using the package geodata

cr_geodata <- gadm("CRI", level = 0, path = "data-raw/gadm")

cr_geodata_to_sf <- st_as_sf(cr_geodata) |>
  dplyr::select(COUNTRY)

st_write(cr_geodata_to_sf, "data-raw/gadm/CRI_gadm41.gpkg")

cr_outline <- st_read("data-raw/gadm/CRI_gadm41.gpkg")

usethis::use_data(cr_outline, overwrite = TRUE)

# outline of Costa Rica only continent

cr_outline_c <- ms_filter_islands(cr_outline, min_area = 1000000000)

usethis::use_data(cr_outline_c, overwrite = TRUE)

# provincias de Costa Rica

cr_geodata_prov <- gadm("CRI", level = 1, path = "data-raw/gadm")

cr_geodata_prov_to_sf <- st_as_sf(cr_geodata_prov)

st_write(cr_geodata_prov_to_sf, "data-raw/gadm/CRI_prov_gadm41.gpkg")

cr_provinces <- st_read("data-raw/gadm/CRI_prov_gadm41.gpkg")

usethis::use_data(cr_provinces, overwrite = TRUE)

# provincias de Costa Rica only continent

cr_provinces_c <- ms_filter_islands(cr_provinces, min_area = 1000000000)

usethis::use_data(cr_provinces_c, overwrite = TRUE)

# cantones de Costa Rica

cr_geodata_cantons <- gadm("CRI", level = 2, path = "data-raw/gadm")

cr_geodata_cantons_to_sf <- st_as_sf(cr_geodata_cantons)

st_write(cr_geodata_cantons_to_sf, "data-raw/gadm/CRI_cantons_gadm41.gpkg")

cr_cantons <- st_read("data-raw/gadm/CRI_cantons_gadm41.gpkg")

usethis::use_data(cr_cantons, overwrite = TRUE)

# cantones de Costa Rica only continent

cr_cantons_c <- ms_filter_islands(cr_cantons, min_area = 1000000000)

usethis::use_data(cr_cantons_c, overwrite = TRUE)

# distritos de Costa Rica

cr_geodata_districts <- gadm("CRI", level = 3, path = "data-raw/gadm")

cr_geodata_districts_to_sf <- st_as_sf(cr_geodata_districts)

st_write(cr_geodata_districts_to_sf, "data-raw/gadm/CRI_districts_gadm41.gpkg")

cr_districts <- st_read("data-raw/gadm/CRI_districts_gadm41.gpkg")

usethis::use_data(cr_districts, overwrite = TRUE)

# distritos de Costa Rica only continent

cr_districts_c <- ms_filter_islands(cr_districts, min_area = 1000000000)

usethis::use_data(cr_districts_c, overwrite = TRUE)




