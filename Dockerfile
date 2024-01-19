# Use a minimal Ubuntu base image
FROM ubuntu:jammy

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

COPY requirements.txt .
COPY synth-shell-prompt.config .

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends \
    git \
    ca-certificates \
    python3-dev \
    python3-pip \
    cmake \
    bc \
    r-base \
    r-base-dev \
    r-cran-lmertest \
    r-cran-performance \
    r-cran-dplyr \
    r-cran-tidyverse \
    r-cran-geepack \
    r-cran-ggplot2 \
    r-cran-emmeans \
    r-cran-lme4 && rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt 

RUN git clone --recursive https://github.com/andresgongora/synth-shell.git && cd synth-shell && echo i | ./setup.sh && cd ..
RUN mv synth-shell-prompt.config ~/.config/synth-shell/
