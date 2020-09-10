# Execute the bellow steps in a terminal

## create web api project - scaffold
dotnet new webapi -n myFirstContainer

dotnet build -p .\myFirstContainer\myFirstContainer.csproj

dotnet.exe run -p .\myFirstContainer\myFirstContainer.csproj


## Create docker file and dockerignore file - scaffold
VScode-> Command Pallet (Alt+ Control +P) -> docker file to workspace

## Create script file manually 
./docker-run.sh

## Any error occured  

```bash: ./docker-run.sh: /bin/bash^M: bad interpreter: No such file or directory``` -  perform the following commands

sed -i -e 's/\r$//' docker-run.sh

sudo apt-get install dos2unix

dos2unix docker-run.sh

chmod +x docker-run.sh


## execute

curl http://localhost:4040/WeatherForecast

## debug

docker exec -it stalin_core_instance sh

## remove

docker stop stalin_core_instance

docker rm -f stalin_core_instance

