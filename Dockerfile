FROM continuumio/anaconda3:latest

RUN pip install autopep8
RUN pip install flake8