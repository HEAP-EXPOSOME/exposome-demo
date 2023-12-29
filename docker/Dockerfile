FROM r-base:latest

WORKDIR tmp

COPY ./Install_dep.R . 

RUN apt-get update

RUN apt install libcairo2-dev libnetcdf-dev libxml2 libxt-dev libssl-dev -y

RUN apt install libfontconfig1-dev libharfbuzz-dev libfribidi-dev -y

RUN apt install libpng-dev libtiff5-dev libjpeg-dev -y

RUN apt install pandoc -y

RUN Rscript Install_dep.R