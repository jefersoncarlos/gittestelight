FROM ubuntu:12.04

RUN apt-get update -y -f
ADD my_app_files /my_app

CMD ["/my_app/start.sh"]

