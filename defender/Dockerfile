FROM python:3.12.2-slim
ENV PORT=8080
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev

WORKDIR /app
COPY requirements.docker.txt .
RUN pip3 install -r requirements.docker.txt
COPY . /app

EXPOSE $PORT
CMD ["python", "app.py", "$PORT"]
