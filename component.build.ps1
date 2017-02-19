task Install {
    # Do nothings
}

task Start {
   Invoke-External { 
       & docker-compose up -d
   } "Starting infrastructure services failed"
}

task Stop {
   Invoke-External { 
       & docker-compose stop
   } "Stopping infrastructure services failed"

   Invoke-External { 
       & docker-compose rm --force
   } "Removing docker containers failed"
}

task Mongo {
    Invoke-External {
        & docker exec -it mongo mongo
    } "Executing mongo client failed"
}