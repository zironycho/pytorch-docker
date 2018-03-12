FROM python:3.6-slim

RUN apt-get update \
  && apt-get install -y locales \
  && rm -rf /var/lib/apt/lists/* \
  && locale-gen en_US en_US.UTF-8


ENV LANG='en_US.UTF-8' \
  LANGUAGE='en_US:en' \
  LC_ALL='en_US.UTF-8'

RUN pip install http://download.pytorch.org/whl/cpu/torch-0.3.1-cp36-cp36m-linux_x86_64.whl \
  torchvision
