FROM python:3.10-slim

WORKDIR /backend

COPY requirements.txt /backend/requirements.txt
RUN pip install --no-cache-dir -r /backend/requirements.txt
COPY . /backend
EXPOSE 8080

CMD ["gunicorn", "app:app"]