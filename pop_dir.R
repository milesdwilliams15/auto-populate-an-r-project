# -------------------------------------------------------------------------
# Create a function to auto-populate a new project with custom file folders
# -------------------------------------------------------------------------

# packages ----------------------------------------------------------------
library(here)
library(stringr)

# pop_dir() ---------------------------------------------------------------

pop_dir <- function(
    set_up = NULL
) {
  if(is.null(set_up)) {
    set_up <- c(
      "00_misc/_readme.txt", 
      "01_code/_readme.txt",
      "01_code/_clean_data.qmd", 
      "01_code/_analysis.qmd",
      "02_data/_readme.txt",
      "02_data/_metadata.qmd",
      "03_output/_readme.txt",
      "04_report/_readme.txt",
      "04_report/_manuscript.qmd"
    )
  }
  the_path <- here()
  the_folders <- str_remove_all(set_up, "\\/.*") |> unique()
  for(i in 1:length(the_folders)) dir.create(
    path = paste0(the_path, "/", the_folders[i])
  )
  for(i in 1:length(set_up)) file.create(
    path = paste0(the_path, "/", set_up[i])
  )
}

## test run
# pop_dir(c("01_data/_clean.R", "02_report/_report.qmd"))
