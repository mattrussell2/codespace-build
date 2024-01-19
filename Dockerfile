# Use a minimal Ubuntu base image
FROM ubuntu:jammy

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

COPY requirements.txt .
COPY synth-shell-prompt.config .

# # Update the apt package list and install Python and R.
# # Also clean up the apt cache to reduce image size
RUN apt-get update && apt-get upgrade
RUN apt-get install -y --no-install-recommends \
    git \
    ca-certificates
#     python3-pip \
#     cmake \
#     bc \
#     r-base \
#     r-base-dev \
#     r-cran-lmertest \
#     r-cran-performance \
#     r-cran-dplyr \
#     r-cran-tidyverse \
#     r-cran-geepack \
#     r-cran-ggplot2 \
#     r-cran-emmeans \
#     r-cran-lme4
#  && rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates

# RUN python3 -m pip install --upgrade pip
# RUN python3 -m pip install -r requirements.txt 

RUN git clone --recursive https://github.com/andresgongora/synth-shell.git && cd synth-shell && echo i | ./setup.sh && cd ..
RUN mv synth-shell-prompt.config ~/.config/synth-shell/

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Make port 80 available to the world outside this container
# EXPOSE 80

# # Define environment variable
# ENV NAME World

# # Run your app. Here you'll need to specify how your app is run.
# CMD ["your_command_to_run_app"]
