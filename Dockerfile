FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app
RUN apt update -y && apt install awscli -y 
RUN apt-get upadate && pip install -r requirements.txt

CMD ["python","app.py"]