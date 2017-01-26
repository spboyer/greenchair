
FROM microsoft/dotnet:1.1.0-sdk-msbuild-rc3
MAINTAINER Shayne Boyer
LABEL Name=greenchair Version=0.0.1 
ARG source=.
WORKDIR /app

ENV ASPNETCORE_URLS=http://*:5000
ENV ASPNETCORE_ENVIRONMENT=Development

EXPOSE 5000
COPY $source .

CMD ["/bin/bash", "-c", "dotnet restore && dotnet watch run"] 
