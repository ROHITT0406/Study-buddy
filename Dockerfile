FROM  python:3

WORKDIR /app

COPY requirement.txt requirement.txt

RUN pip install -r requirement.txt

COPY . .

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000
