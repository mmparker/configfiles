
# Matt's configuration file

# set the default help type
# options(help_type="text")
  options(help_type="html")


# Point to a version independent library of packages
.libPaths("~/Rlibrary")

# set a CRAN mirror
  local({r <- getOption("repos")
        r["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN/"
        options(repos=r)})


# If in an interactive mode, load up vimcom for the Vim plugin
if(interactive()){
    library(vimcom)
}    
