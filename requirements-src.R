# options(repos = c(
#     CRAN = 'https://packagemanager.rstudio.com/cran/__linux__/focal/latest'
# ))

# for some reason ARTool/FactoMineR installer fails to see emmeans with pak
install.packages(c('ARTool', 'FactoMineR'), dependencies=TRUE)

pkgs <- c(    
    'ggplot2',
    'see',
    'patchwork',
    'glmmTMB',
    'languageserver',
    'corrr',
    'ggcorrplot',
    'tidyverse',
    'ez'
)

if (!requireNamespace("pak", quietly = TRUE)) {
    install.packages("pak", repos = options()$repos)
}

pak::pkg_install(pkgs)

