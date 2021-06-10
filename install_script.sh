#!/bin/bash

# Install script for pop_os 20.10
# pabsantos, 2020-06-10

echo "pabsantos programs setup:"
echo "Please run inside home folder"

sudo apt update
sudo apt upgrade

# Install basic tools

sudo apt install ranger neofetch htop -y

# Install R and libraries

sudo apt install software-properties-common dirmngr -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

sudo apt install r-base -y
sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+

sudo apt update
sudo apt install r-cran-tidyverse -y

# Install RStudio

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1717-amd64.deb
sudo apt install ./rstudio-1.4.1717-amd64.deb -y

# Install LaTeX

sudo apt install texlive-full -y

# Install VSCode

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./code_1.56.2-1620838498_amd64.deb -y

# Install Notable

wget https://download.notable.app/?target=deb
sudo apt install ./notable_1.8.4_amd64.deb -y

# Install Mendeley Desktop

wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo apt install ./mendeleydesktop_1.19.8-stable_amd64.deb -y

echo "Install complete."
