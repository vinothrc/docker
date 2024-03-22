#!/bin/bash
cd /app/
java -Xms256m -Xmx1g -jar -DINSTNACE_NAME=Java-Spring-Boot spring-boot-backend-0.0.1-SNAPSHOT.jar 2>&1 > /var/log/java.log &

tail -f /dev/null
