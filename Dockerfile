FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY my_module /app/my_module

CMD ["python", "/app/my_module/main.py"]