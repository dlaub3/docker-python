FROM python:latest

RUN mkdir -p /var/www/app
WORKDIR /var/www/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

# CMD ["python", "app.py"]

CMD [ "uwsgi", "--socket", "app.sock", \
  "--uid", "1000", \
  "--plugins", "python3", \
  "--protocol", "uwsgi", \
  "--wsgi", "wsgi:app" ]