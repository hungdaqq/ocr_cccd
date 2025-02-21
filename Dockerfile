FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .


RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "main.py"]
