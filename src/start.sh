#!/bin/sh
sleep 5

cd /code
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000

# uvicorn config.asgi:application --port 8000 --host 0.0.0.0 --reload
