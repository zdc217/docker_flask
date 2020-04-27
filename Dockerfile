FROM python:3.8
WORKDIR /app
RUN apt-get update && apt-get install sqlite3
COPY requirements.in /
RUN pip install -r /requirements.in
# These can be uncommented and filled in when setting up mailtrap
# use with os.envron in app.py
# ENV MAIL_USERNAME= \
#     MAIL_PASSWORD= \
#     MAIL_SERVER=smtp.mailtrap.io \
#     MAIL_PORT=2525 \
#     MAIL_USE_TLS=True
ENTRYPOINT ["python"]
CMD ["app.py"]