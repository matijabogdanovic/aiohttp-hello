FROM python:3.8.0-slim-buster

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 --no-cache-dir install -r requirements.txt

COPY . /app

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["main.py"]
