FROM python:3.10

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./canvas.py .
COPY ./canvas-test.py .

CMD [ "python", "./canvas-test.py" ]