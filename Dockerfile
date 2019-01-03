FROM ubuntu:latest

#Install Powershell
RUN apt-get update && apt-get upgrade -y && apt-get install wget -y && wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb && apt-get update && apt-get install powershell -y
RUN pwsh -c "Install-Module -Name Az -Force"

CMD "/usr/bin/pwsh"