FROM python:3.11.2-slim-buster

COPY . /app

WORKDIR /app

RUN pip install pdm
RUN pdm install --prod

EXPOSE 8000

CMD pdm run uvicorn app:app --host 0.0.0.0 --port 8000