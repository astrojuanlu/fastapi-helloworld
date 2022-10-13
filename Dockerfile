FROM python:3.10-slim

WORKDIR /src

COPY ./requirements.txt /src/
RUN pip install -r /src/requirements.txt

COPY ./main.py /src

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
