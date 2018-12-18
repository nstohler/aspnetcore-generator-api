# Docker Images and Containers for ASP.NET Core / Wes Higbee

https://app.pluralsight.com/library/courses/docker-images-containers-aspdotnet-core/table-of-contents

## Docker Commands (basics)

Mount the current directory inside the container as C:\Api
```
docker run --rm -it -v `pwd -W`:c:/api microsoft/aspnetcore:2
```

Publish command (outside container):
```
dotnet publish -o ./publish
```

Run (inside container):
```
dotnet api/publish/api.dll
```

### Find container ip address

Method 1: Get **container IP address**

- `docker ps` : find container id (4 first chars is enough)
- `docker inspect 28cc` : scroll up, find `"IPAddress"`, copy
- paste in browser

Method 2: **Publish a port** (map container port (80) to host port (8080)):

```
docker run --rm -it -v `pwd -W`:c:/api -p 8080:80 microsoft/aspnetcore:2
```

> http://localhost:8080 works now (no limitation issue like mentioned in pluralsight course)

### Misc commands

```
dotnet api/publish/win-auth-httpsys.dll

```

### Do the above with Linux containers

- Allow docker to access C drive!
- Command slightly different: 
```
docker run --rm -it -v `pwd -W`:/api -p 8080:80 microsoft/aspnetcore:2
```

Run dotnet project inside Linux container with
```
dotnet api/publish/api.dll
```

## Git Bash commands (windows)

Current directory
```
pwd -W
```

```
`pwd -W`
```

## Run SQL Server db

`docker run -d -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=whatever12!' -p 1433:1433 --name sqllinux-netcore microsoft/mssql-server-linux`

## Links

- [g0t4/aspnetcore-generator-api](https://github.com/g0t4/aspnetcore-generator-api)
- [Introduction to Containers and Docker](https://docs.microsoft.com/en-us/dotnet/standard/microservices-architecture/container-docker-introduction/)
- [Docker for .NET Developers](https://www.stevejgordon.co.uk/docker-dotnet-developers-part-1)
- [ASP .NET Core with Docker: Beginers Guide](https://medium.com/@alcalawilfre/asp-net-core-with-docker-a-beginers-guide-4f490f644a89)
- [GitBash Windows / PWD format](https://stackoverflow.com/a/53776949/54159)
- [Docker compose an ASP NET Core application with SQL Server](https://kimsereyblog.blogspot.com/2018/10/docker-compose-asp-net-core-application.html)
- [Getting Started with Docker on Windows Server 2019](https://blog.sixeyed.com/getting-started-with-docker-on-windows-server-2019/)
- [https://katacoda.com/courses/docker](https://katacoda.com/courses/docker)
- [Amazon Elastic Container Service](https://aws.amazon.com/ecs/)

### Dotnet watch

- [dotnet watch 2.1](https://natemcmaster.com/blog/2018/05/12/dotnet-watch-2.1/)
- [Debugging Dotnet Watch processes inside of a Docker container](https://www.reddit.com/r/csharp/comments/9cyl6a/debugging_dotnet_watch_processes_inside_of_a/)
- [Dispersia/Dotnet-Watch-Docker-Example](https://github.com/Dispersia/Dotnet-Watch-Docker-Example)

## ASPNET Core with SQL Server examples

- [Quickstart: Compose and ASP.NET Core with SQL Server](https://docs.docker.com/compose/aspnet-mssql-compose/)
- [Defining your multi-container application with docker-compose.yml](https://docs.microsoft.com/en-us/dotnet/standard/microservices-architecture/multi-container-microservice-net-applications/multi-container-applications-docker-compose)
- [Quickstart: Run SQL Server container images with Docker](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-2017)
- [Configure SQL Server container images on Docker](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-configure-docker?view=sql-server-2017#production)


- [.Net Core and SQL Server In Docker - Part 1 : Building the Service](https://blog.kontena.io/dot-net-core-and-sql-server-in-docker/)
- [.Net Core and SQL Server In Docker - Part 2 : Deploying to AWS](https://blog.kontena.io/dot-net-core-and-sql-server-in-docker-part-2/)


## Windows Authentication within Containers

- [ASP.NET core and integrated windows authentication in nanoserver container](https://artisticcheese.wordpress.com/2017/09/10/asp-net-core-and-integrated-windows-authentication-in-nanoserver-container/)

## Windows Authentication within Containers (NOT aspnet CORE specific!)

- [Docker Reference Architecture: Modernizing Traditional .NET Framework Applications](https://success.docker.com/article/modernizing-traditional-dot-net-applications)
- [Windows authentication in Docker containers just got a lot easier](https://www.axians-infoma.de/techblog/windows-authentication-in-docker-containers-just-got-a-lot-easier/)

