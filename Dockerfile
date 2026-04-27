FROM python:3.12-slim

WORKDIR /app

# copy dependency trước để cache
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy code sau
COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]