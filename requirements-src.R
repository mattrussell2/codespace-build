# options(repos = c(
#     CRAN = 'https://packagemanager.rstudio.com/cran/__linux__/focal/latest'
# ))

pkgs <- c(    
    'ggplot2',
    'see',
    'patchwork',
    'glmmTMB', 
    'languageserver',
    'corrr',
    'ggcorrplot', 
    'FactoMineR',
    'tidyverse',
    'ez',
    'ARTool'
)

if (!requireNamespace("pak", quietly = TRUE)) {
    install.packages("pak", repos = options()$repos)
}

pak::pkg_install(pkgs)
