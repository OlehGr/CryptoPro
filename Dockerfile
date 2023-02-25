FROM python:3.9

WORKDIR /app/

RUN mkdir /app/static && mkdir /app/media

COPY requirements.txt .

RUN pip install --no-cache-dir -r ./requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "makemigrations"]
CMD ["python", "manage.py", "migrate"]
