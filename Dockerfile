FROM microsoft/dotnet
MAINTAINER Edgard Aviles "edgard.aviles@ooqia.com"
COPY . /app
WORKDIR /app
ENV ASPNETCORE_URLS http://*:5004
RUN ["dotnet", "restore"]
EXPOSE 5004
ENTRYPOINT ["dotnet", "run"]
