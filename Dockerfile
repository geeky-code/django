FROM python:buster

RUN pip install django
RUN pip install requests
RUN pip install celery
RUN pip install redis
RUN pip install certifi
RUN pip install urllib3[secure]
RUN pip install ipython


EXPOSE 8000
CMD ["python", "/app/manage.py", "runserver", "0.0.0.0:8000"]
