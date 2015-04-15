
# Matt's configuration file

# set the default help type
 options(help_type="text")
# options(help_type="html")


# Point to a version independent library of packages
.libPaths("~/Rlibrary")

# set a CRAN mirror
  local({r <- getOption("repos")
        r["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN/"
        options(repos=r)})



# I'm reluctant to do this, but it's a narrow package
# that comprises most of my use on the server, so...
library(RevoKnitR)
