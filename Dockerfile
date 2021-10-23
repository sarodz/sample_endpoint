FROM python:3.9.6-slim

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y make

ENV PYTHONUNBUFFERED 1
EXPOSE 8000

WORKDIR /app
COPY . .
RUN make install

CMD ["uvicorn", "--host", "0.0.0.0", "--port", "8000", "sample_endpoint.endpoint:app"]