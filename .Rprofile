# This is my R settings
# Authors: Nicholas Langevin
# Email: Langevin.Nicholas@hotmail.com

options(max.print = 100)
options(stringAsFactors = FALSE)
# options(prompt="R> ")
# auto.loads <-c("dplyr", "ggplot2")

# Default repo
local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.r-project.org" 
       options(repos=r)
})

# Personal function to quit with no save
qq <- function(save="no"){
    if( !(save %in% c("no", "yes")) ) return("Wrong argument")
    q(save=save) 
}

.First <- function(){
cat("-----------------------------------------------------
    Bienvenue Nicholas Langevin
    Debut de la session:", date(),"
    Version:", R.version.string,
    "\n-----------------------------------------------------\n") 
}
