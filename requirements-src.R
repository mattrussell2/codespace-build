pkgs <- c(    
    'ggplot2',
    'see',
    'patchwork',
    'glmmTMB',
    'languageserver',
    'corrr',
    'ggcorrplot',
    'tidyverse',
    'ez', 
    'report',
    'modelbased',
)

if (!requireNamespace("pak", quietly = TRUE)) {
    install.packages("pak", repos = options()$repos)
}

pak::pkg_install(pkgs)

