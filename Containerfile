FROM python:3.10.5-buster

RUN mkdir /app
WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]