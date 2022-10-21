FROM python:3.8-slim-buster

WORKDIR /app

COPY app/requirements.txt requirements.txt

RUN pip install -r requirements.txt

ADD app .

EXPOSE 5000

CMD ["ddtrace-run", "python", "-m" , "flask", "run", "--host=0.0.0.0"]