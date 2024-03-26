#!/bin/bash
winpty docker run -it --rm -p 3008:3006 --name mysql-demo -e MYSQL_ROOT_PASSWORD=TestRootPas5 -d mysql-demo:latest
