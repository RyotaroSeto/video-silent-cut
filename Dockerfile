FROM python:3.8.6-buster

WORKDIR /var/www

RUN pip install requests pycodestyle autopep8 mypy \
    black pandas numpy matplotlib workflow colorama docopt bokeh pandas-bokeh

RUN apt update
RUN apt -y upgrade
RUN apt-get -y install ffmpeg
RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
