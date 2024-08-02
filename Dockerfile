FROM python:3.11.0
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && pip install -r req.txt
CMD ["python3", "app.py"]