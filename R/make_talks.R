make_talks <- function(db_account = "email@university.edu", pdf=TRUE) {
  rmarkdown::render("play-overview.Rmd", params=list(db_login = db_account))
  rmarkdown::render("data-management.Rmd")
  if (pdf) {
    pagedown::chrome_print("play-overview.html")
    pagedown::chrome_print("data-management.html")
  }
  databraryapi::logout_db()
}