FROM python:3
ADD webapp.py /
RUN pip install flask
RUN pip install flask_restful
EXPOSE 8080
CMD ["python","./webapp.py"]