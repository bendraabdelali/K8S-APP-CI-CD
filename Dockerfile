FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt requirements.txt

Run python -m pip install --upgrade pip

RUN pip3 install -r requirements.txt

COPY ./app .
EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD ["app.py" ]
