FROM python:3.10
WORKDIR /opt/app
COPY . /opt/app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV FLASK_ENV=production
CMD [ "python", "todo_app/app.py" ]