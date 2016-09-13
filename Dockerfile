FROM microsoft/dotnet
MAINTAINER Edgard Aviles "edgard.aviles@ooqia.com"
RUN mkdir -p /opt/webapp
ENV ASPNETCORE_URLS http://*:5004
EXPOSE 5004 
WORKDIR /opt/webapp
CMD dotnet restore && dotnet run