FROM python:3.9

WORKDIR /app/backend

RUN apt-get update\
    && apt-get install -y gcc default-libmysqlclient-dev pkq-config\
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN pip install mysqlclient 

COPY . .
CMD ["python", "app.py"]