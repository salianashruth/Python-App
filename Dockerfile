FROM python:3

WORKDIR /app

COPY requirements.txt /app/
COPY devops /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
