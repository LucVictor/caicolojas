FROM python:3.9
ENV SQLALCHEMY_DATABASE_URL="mysql+pymysql://root:caico123@caicomatriz-db.lucascoding.com.br/caico_ln"
COPY ./ /app
WORKDIR /app
RUN ls -a
RUN pip3 install -r requirements.txt
CMD [ "gunicorn", "wsgi:app", "--bind", " 0.0.0.0:3000"]