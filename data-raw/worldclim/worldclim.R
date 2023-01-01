## Code to get worldclim data for Costa Rica

library(sf)
library(stars)
library(terra)
library(geodata)
library(rnaturalearth)
library(rmapshaper)
library(here)

# Minimum temperature for Costa Rica

worldclim_country(country = "CRI", var = "tmin", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "tmax", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "tavg", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "prec", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "srad", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "vapr", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "wind", path = "data-raw/worldclim")

worldclim_country(country = "CRI", var = "bio", path = "data-raw/worldclim")

cr_tmin <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_tmin.tif")) |>
  st_crop(cr_outline)

cr_tmax <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_tmax.tif")) |>
  st_crop(cr_outline)

cr_tavg <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_tavg.tif")) |>
  st_crop(cr_outline)

cr_prec <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_prec.tif")) |>
  st_crop(cr_outline)

cr_srad <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_srad.tif")) |>
  st_crop(cr_outline)

cr_vapr <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_vapr.tif")) |>
  st_crop(cr_outline)

cr_wind <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_wind.tif")) |>
  st_crop(cr_outline)

cr_bio <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_bio.tif")) |>
  st_crop(cr_outline)

usethis::use_data(cr_tmin, overwrite = TRUE)
usethis::use_data(cr_tmax, overwrite = TRUE)
usethis::use_data(cr_tavg, overwrite = TRUE)
usethis::use_data(cr_prec, overwrite = TRUE)
usethis::use_data(cr_srad, overwrite = TRUE)
usethis::use_data(cr_vapr, overwrite = TRUE)
usethis::use_data(cr_wind, overwrite = TRUE)
usethis::use_data(cr_bio, overwrite = TRUE)

cr_tmin_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_tmin.tif")) |>
  st_crop(cr_outline_c)

cr_tmax_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_tmax.tif")) |>
  st_crop(cr_outline_c)

cr_tavg_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_tavg.tif")) |>
  st_crop(cr_outline_c)

cr_prec_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_prec.tif")) |>
  st_crop(cr_outline_c)

cr_srad_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_srad.tif")) |>
  st_crop(cr_outline_c)

cr_vapr_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_vapr.tif")) |>
  st_crop(cr_outline_c)

cr_wind_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_wind.tif")) |>
  st_crop(cr_outline_c)

cr_bio_c <- read_stars(here("data-raw/worldclim/wc2.1_country/CRI_wc2.1_30s_bio.tif")) |>
  st_crop(cr_outline_c)


usethis::use_data(cr_tmin_c, overwrite = TRUE)
usethis::use_data(cr_tmax_c, overwrite = TRUE)
usethis::use_data(cr_tavg_c, overwrite = TRUE)
usethis::use_data(cr_prec_c, overwrite = TRUE)
usethis::use_data(cr_srad_c, overwrite = TRUE)
usethis::use_data(cr_vapr_c, overwrite = TRUE)
usethis::use_data(cr_wind_c, overwrite = TRUE)
usethis::use_data(cr_bio_c, overwrite = TRUE)


