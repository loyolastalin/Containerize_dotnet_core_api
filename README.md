# Execute the bellow steps in a terminal

#### Table of Contents

*   [Project Creation and Build](#Create_Code)
*   [Script](#Create_script)
*   [Troubleshoot](#Troubleshoot)
*   [Validate Container](#Validate)
*   [Debug Container](#debug)
*   [Cleanup](#remove)


## Create_Code
### create web api project - scaffold

```dotnet
dotnet new webapi -n myFirstContainer
dotnet build -p .\myFirstContainer\myFirstContainer.csproj
dotnet.exe run -p .\myFirstContainer\myFirstContainer.csproj
```

### Create docker file and dockerignore file - scaffold
VScode-> Command Pallet (Alt+ Control +P) -> docker file to workspace

## Create_script
./docker-run.sh

## Troubleshoot

```bash: ./docker-run.sh: /bin/bash^M: bad interpreter: No such file or directory``` -  perform the following commands

sed -i -e 's/\r$//' docker-run.sh

sudo apt-get install dos2unix

dos2unix docker-run.sh

chmod +x docker-run.sh


## Validate

curl http://localhost:4040/WeatherForecast

## debug

docker exec -it stalin_core_instance sh

## remove

docker stop stalin_core_instance

docker rm -f stalin_core_instance

