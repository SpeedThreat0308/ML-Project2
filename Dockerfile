FROM python:3.9-slim-buster
WORKDIR /app1
COPY . /app1
ENV FLASK_APP=application.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apt update -y && apt install awscli -y
RUN pip install -r requirements.txt
CMD [ "flask", "run" ]