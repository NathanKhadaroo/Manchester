install.packages("remotes")
library(tidyverse)
remotes::install_github("o2r-project/containerit")
library(containerit)



install.packages("RcppArmadillo") # not from source

# R will ask you if you want to install this from source - please type N

my_packages <- c("tidyverse",
                 "fivethirtyeight",
                 "gapminder",
                 "ggrepel",
                 "gganimate",
                 "ggridges",
                 "ggthemes",
                 "coefplot",
                 "jsonlite",
                 "statnet",
                 "igraph",
                 "tm",
                 "tidytext",
                 "readtext",
                 "rvest",
                 "stringr",
                 "devtools",
                 "wordcloud",
                 "proxy",
                 "fpc",
                 "cluster",
                 "janeaustenr",
                 "gutenbergr",
                 "ggraph",
                 "syuzhet",
                 "plotly",
                 "caret",
                 "ggplot2",
                 "mlbench",
                 "class",
                 "caTools",
                 "randomForest",
                 "ranger",
                 "kernlab",
                 "class",
                 "glmnet",
                 "naivebayes",
                 "rpart",
                 "rpart.plot")

install.packages(my_packages)

lapply(my_packages, library, character.only = TRUE)

#utils::sessionInfo()

dockerfile_object <- dockerfile(from = utils::sessionInfo())
