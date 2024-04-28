FROM python:3.8-slim

WORKDIR /app

COPY . /app/

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev

RUN pip install --trusted-host pypi.python.org -r requirement.txt
EXPOSE 5001
CMD ["python", "app.py"]