#!/bin/bash
winpty docker run -it --rm -p 8081:80 --name nginx dr.zyliq.com/nginx-demo:latest

