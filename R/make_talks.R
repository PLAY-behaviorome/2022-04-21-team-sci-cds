make_talks <- function(db_account = "email@university.edu") {
  rmarkdown::render("play-overview.Rmd", params=list(db_login = db_account))
  rmarkdown::render("data-management.Rmd")
  databraryapi::logout_db()
}