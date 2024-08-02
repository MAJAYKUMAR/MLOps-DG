FROM python:3.11.0
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && pip install -r req.txt
EXPOSE 8000

# Define environment variable
ENV NAME World

CMD ["python3", "app.py"]