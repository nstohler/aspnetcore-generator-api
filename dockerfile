# Build stage
FROM microsoft/aspnetcore-build:2 as build-env

WORKDIR /generator

# restore
COPY api/api.csproj ./api/
RUN dotnet restore api/api.csproj

COPY tests/tests.csproj ./tests/
RUN dotnet restore tests/tests.csproj

# copy src
COPY . .

# test

# publish



# Runtime stage