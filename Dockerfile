FROM python:3.9-slim-buster
WORKDIR /app1
COPY . /app1
RUN apt update -y && apt install awscli -y
RUN pip install -r requirements.txt
CMD [ "python", "application.py" ]