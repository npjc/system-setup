# This is a file or R  code that is sourced on startup. 
# see also ?Startup
# sources:
#   https://github.com/hadley/devtools/README.md
#   https://csgillespie.github.io/efficientR/3-3-r-startup.html#r-startup


.First <- function() {
  options(
 	# install from rstudio cran mirror
    repos = c(CRAN = "https://cran.rstudio.com/"),
    # ignore new lines when browse()ing
    browserNLdisabled = TRUE,
    # minimal traceback() output
    deparse.max.lines = 2,
    # devtools options
    devtools.name = "Nicolas PJ Coutin",
    devtools.desc.author = "Nicolas PJ Coutin <nicolas.coutin@gmail.com> [aut, cre]",
    devtools.desc.license = "GPL-3",
    # printing to console
    digits = 4 # default is 7,
    # downloading things
    # download.file.method = "wget", # defaults is "libcurl"
    # timeout = 120 # default is 60 (seconds)
    )
}

if (interactive()) {
  # if interactive session automatically load devtools
  suppressMessages(require(devtools))
}
