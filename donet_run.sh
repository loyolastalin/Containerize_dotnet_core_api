#!/bin/bash -e
PROJECT_NAME=.\src\myFirstContainer\myFirstContainer.csproj

 dotnet build $PROJECT_NAME
 dotnet run --project $PROJECT_NAME