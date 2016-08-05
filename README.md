# <img src="https://github.com/pip-services/pip-services/blob/master/design/Logo.png" alt="Pip.Services Logo" style="max-width:30%"> <br/> Development environment

This is a dockerized environment to support development and testing of Pip.Services. 

**docker-compose.yaml** file contains configuration of supported databases and infrastructure services like mongodb, memcached, etc. They configured to use internal storage, so after restart their state is lost.

## Installation

Before using the infrastructure you shall install [Docker for Windows](https://docs.docker.com/docker-for-windows/). If you are planning to use Vagrant with VirtualBox or VMware, install [Docker Toolbox](https://www.docker.com/products/docker-toolbox) instead since the latest version of Docker uses Hiper-V and conflicts with other VM managers.

## Start / Stop

To start the services:
```bash
docker-compose up [mysql memcached]
```

To stop the services:
```bash
docker-compose stop
```

To remove the services:
```bash
docker-compose rm --all
```

## Special commands

Open MongoDB client console:
```bash
docker exec -it mongo mongo
```

Then inside the console select **pipservicestest** database:
```bash
use pipservicestest
show collections
```


