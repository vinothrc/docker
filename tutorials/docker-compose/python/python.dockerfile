FROM python:3.11-alpine
LABEL maintainer="vinothrclaksh@gmail.com"
COPY ./python /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "/app/app.py"]
