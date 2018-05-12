FROM microsoft/dotnet:latest
COPY ./aspnet_demo /app
WORKDIR /app

RUN dotnet restore
RUN dotnet build
 
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT docker
 
ENTRYPOINT dotnet run