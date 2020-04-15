FROM python:stretch

COPY . /app
WORKDIR /app

#  RUN pip install upgrade
RUN pip install -r requirements.txt


# CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "app:app"]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
