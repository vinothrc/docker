FROM python:3.11
LABEL maintainer="vinothrclaksh@gmail.com"
WORKDIR /app
COPY ./python/ /app
RUN pip install -r requirements.txt
EXPOSE 5000
#CMD ["tail", "-f","/dev/null"]
CMD ["python", "/app/mysql_connect.py"]
