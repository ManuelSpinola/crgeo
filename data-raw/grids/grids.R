## Code to get grids for Costa Rica

library(sf)
library(stars)
library(terra)
library(here)

# Grid of 8km for Costa Rica

cr_grid_8km <- st_read(here("data-raw/grids/grid_8km.gpkg"))

usethis::use_data(cr_grid_8km, overwrite = TRUE)

# Grid of 4km for Costa Rica

cr_grid_4km <- st_read(here("data-raw/grids/grid_4km.gpkg"))

usethis::use_data(cr_grid_4km, overwrite = TRUE)

# Grid of 2km for Costa Rica

cr_grid_2km <- st_read(here("data-raw/grids/grid_2km.gpkg"))

usethis::use_data(cr_grid_2km, overwrite = TRUE)

# Grid of 1km for Costa Rica

cr_grid_1km <- st_read(here("data-raw/grids/grid_1km.gpkg"))

usethis::use_data(cr_grid_1km, overwrite = TRUE)




