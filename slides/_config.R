# Setup ----
## Packages to use ----
if (!require("pacman")) install.packages("pacman")
if (!require("remotes")) install.packages("remotes")
if (!require("mytidyfunctions")) remotes::install_github("JavierMtzRdz/presupuestoR")
pacman::p_load(
  tidyverse, janitor, writexl,
  readxl, scales, mytidyfunctions,
  ggdist, distributional
)

## Set theme ------
theme_set(theme_jmr(
  text = element_text(
    family = "Lato",
    size = 25
  ),
  panel.grid = element_blank(),
  plot.title = formt_text(size = 35)
))

options(
  ggplot2.discrete.colour = c("#1E81A2", "#FF483B", "#039176", "#FFAC41"),
  ggplot2.discrete.fill = c("#1E81A2", "#FF483B", "#039176", "#FFAC41")
)

update_geom_defaults("col",   list(fill = paletas_jmr$general[1]))
update_geom_defaults("bar",   list(fill = paletas_jmr$general[1]))
update_geom_defaults("area",   list(fill = paletas_jmr$general[1]))
update_geom_defaults("point",   list(color = paletas_jmr$general[1]))
update_geom_defaults("line",   list(color = paletas_jmr$general[1]))

## Specify locale ----
Sys.setlocale("LC_ALL", "es_ES.UTF-8")

## Disable scientific notation ----
options(scipen = 999)