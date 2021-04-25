source("code/_functions/import_censo70.R")

memory.limit(99999999999)

censo70_list <- list.files("data/raw2clean/censo70_ibge/input/")

censo70 <- purrr::map_df(.x = censo70_list, .f = import_censo70)

rio::export(censo70, "data/raw2clean/censo70_ibge/output/censo70.rds")

rm(censo70)
