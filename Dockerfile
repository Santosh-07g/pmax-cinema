FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && gunicorn movie_project.wsgi:application --bind 0.0.0.0:8000 --workers 2 --log-level debug"]FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["sh", "-c", "python manage.py migrate && gunicorn movie_project.wsgi:application --bind 0.0.0.0:$PORT --workers 2 --log-level debug"]