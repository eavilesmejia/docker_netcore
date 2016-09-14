FROM microsoft/dotnet:1.0.0-preview2-003131
MAINTAINER Edgard Aviles "edgard.aviles@ooqia.com"
RUN mkdir -p /opt/webapp
ENV ASPNETCORE_URLS http://*:5004
EXPOSE 5004 
WORKDIR /opt/webapp
CMD dotnet restore && dotnet run
