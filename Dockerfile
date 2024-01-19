# Use Alpine Linux as the base image
FROM alpine:latest

# Set the working directory in the container
WORKDIR /app

# Install only the necessary packages
# For instance, if you need Python for your application, install it using apk
# Add '--no-cache' to avoid the index being stored in the container, reducing size
RUN apk add --no-cache python3 py3-pip

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
#RUN pip3 install pandas

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python3", "app.py"]


# FROM mcr.microsoft.com/devcontainers/universal:linux

# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends software-properties-common 
# #         man-db
# # RUN apt-get -y install --no-install-recommends \
# #         libcurl4-openssl-dev \
# #         libzip-dev \
# #         libssl-dev \
# #         libxml2-dev \
# #         libxt6 \
# #         apt-utils \
# #         git \
# #         openssh-client \
# #         gnupg2 \
# #         iproute2 \
# #         procps \
# #         lsof \
# #         htop \
# #         net-tools \
# #         psmisc \
# #         curl \
# #         wget \
# #         rsync \
# #         ca-certificates \
# #         unzip \
# #         zip \
# #         nano \
# #         vim-tiny \
# #         less \
# #         jq \
# #         lsb-release \
# #         apt-transport-https \
# #         dialog \
# #         libc6 \
# #         libgcc1 \
# #         libgssapi-krb5-2 \
# #         libicu[0-9][0-9] \
# #         libstdc++6 \
# #         zlib1g \
# #         locales \
# #         sudo \
# #         ncdu \
# #         software-properties-common \
# #         man-db

# # Install R
# RUN apt-get install r-base r-base-dev -y
# RUN apt-get install -f r-cran-emmeans r-cran-lmertest r-cran-performance r-cran-dplyr r-cran-tidyverse r-cran-geepack r-cran-ggplot2 -y

# RUN python3 -m pip install --upgrade pip
# RUN python3 -m pip install setuptools radian statsmodels ipykernel pandas numpy matplotlib scikit-learn seaborn