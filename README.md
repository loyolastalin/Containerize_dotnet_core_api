# Execute the bellow steps in a terminal


./docker-run.sh

## Any error occured  

```bash: ./docker-run.sh: /bin/bash^M: bad interpreter: No such file or directory``` perform the following commands

sed -i -e 's/\r$//' docker-run.sh

sudo apt-get install dos2unix

dos2unix docker-run.sh

chmod +x docker-run.sh


## execute

curl http://localhost:4040/WeatherForecast

## debug

docker exec -it stalin_core_instance sh

