FROM --platform=linux/arm64 python:3.9-slim-bullseye

WORKDIR /app

COPY . .

CMD ["python", "app.py"]