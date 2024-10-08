# Use a minimal Ubuntu base image
FROM ubuntu:jammy

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends \
    git \
    ssh-client \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    ca-certificates \
    python3-dev \
    python3-pip \
    htop \
    cmake \
    bc \
    libgsl-dev \    
    libfreetype-dev \
    libfontconfig-dev \
    libfribidi-dev \
    libharfbuzz-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libatlas-base-dev \
    r-base \
    r-base-dev \
    r-cran-lmertest \
    r-cran-performance \
    r-cran-dplyr \
    r-cran-geepack \    
    r-cran-emmeans \
    r-cran-lme4 \
    locales && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

# COPY requirements-src.R .
# RUN Rscript requirements-src.R

RUN update-ca-certificates

RUN python3 -m pip install --upgrade pip

COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt 

COPY synth-shell-prompt.config .
RUN git clone --recursive https://github.com/andresgongora/synth-shell.git && cd synth-shell && echo i | ./setup.sh && cd ..
RUN mv synth-shell-prompt.config ~/.config/synth-shell/

COPY .vscode ~/.vscode