library(babelquarto)
parent_dir <- withr::local_tempdir()
project_dir <- "multilingual_website"
babelquarto::quarto_multilingual_website(
  parent_dir = parent_dir,
  project_dir = project_dir,
  main_language = "pt",
  further_languages = "en"
)

servr::httw("_site")
