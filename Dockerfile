
FROM python:3.10

WORKDIR /opt

COPY requirements.txt requirements-dev.txt /opt/

RUN pip install --no-cache-dir --upgrade -r /opt/requirements.txt -r /opt/requirements-dev.txt

COPY ./app /opt/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
