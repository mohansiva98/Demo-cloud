FROM public.ecr.aws/docker/library/python:3.10-slim

WORKDIR /app
COPY ./app ./app
COPY requirements.txt .
RUN pip install -r requirements.txt
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
