FROM python:3.9-slim

WORKDIR /app

COPY api/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY api/ .

ENV PORT=5000
EXPOSE $PORT

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "4", "app:app"] 