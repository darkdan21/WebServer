FROM alpine:latest

RUN apk --no-cache add python2 py2-pip \ 
&& pip install flask
WORKDIR /srv
COPY srv/* .

EXPOSE 5000
CMD [ "python","main.py" ]
