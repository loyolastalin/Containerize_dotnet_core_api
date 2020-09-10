FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["myFirstContainer/myFirstContainer.csproj", "myFirstContainer/"]
RUN dotnet restore "myFirstContainer/myFirstContainer.csproj"
COPY . .
WORKDIR "/src/myFirstContainer"
RUN dotnet build "myFirstContainer.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "myFirstContainer.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "myFirstContainer.dll"]
