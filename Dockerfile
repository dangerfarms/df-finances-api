FROM dangerfarms/geodrf-alpine:latest
RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
ADD requirements.dev.txt /app/
RUN pip install --user -r requirements.dev.txt -U
RUN curl https://raw.githubusercontent.com/django/django/master/extras/django_bash_completion >> ~/.bashrc
ADD . /app/