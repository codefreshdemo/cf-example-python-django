FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/

EXPOSE 8000

#Adding comment
ADD requirements.txt /opt/codefresh/something
RUN pip install -r requirements.txt
ADD . /code/
RUN apt-get update && apt-get install -y netcat
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
