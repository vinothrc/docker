#!/bin/bash
winpty docker run -it --rm -p 8080:80 --name nginx nginx-demo:latest

