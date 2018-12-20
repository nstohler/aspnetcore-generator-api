FROM microsoft/aspnetcore-build:2 AS build-env
WORKDIR /app
RUN dotnet new mvc
RUN dotnet restore
# RUN dotnet publish -o /published
RUN dotnet publish -o /published /p:MvcRazorCompileOnPublish=false
# RUN dotnet publish -o /published /p:PublishWithAspNetCoreTargetManifest=false

FROM microsoft/aspnetcore:2
COPY --from=build-env /published /published
WORKDIR /publishedsss
ENTRYPOINT ["dotnet", "/published/app.dll"]