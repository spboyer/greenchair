
FROM microsoft/dotnet:1.1.0-sdk-msbuild-rc3
MAINTAINER Shayne Boyer
LABEL Name=greenchair Version=0.0.1 
ARG source=.
WORKDIR /app
EXPOSE 5000
COPY $source .

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
ENTRYPOINT ["dotnet", "run"]
