FROM python:3.8.13-slim-bullseye

RUN export DEBIAN_FRONTEND=noninteractive \
  && echo "LC_ALL=en_US.UTF-8" >> /etc/environment \
  && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
  && echo "LANG=en_US.UTF-8" > /etc/locale.conf \
  && apt update && apt install -y locales \
  && locale-gen en_US.UTF-8 \
  && rm -rf /var/lib/apt/lists/*

RUN pip install \
  torch==1.12.0+cpu \
  torchvision==0.13.0+cpu \
  torchaudio==0.12.0+cpu \
  --extra-index-url https://download.pytorch.org/whl/cpu \
  && rm -rf /root/.cache/pip

ENV LANG=en_US.UTF-8 \
  LANGUAGE=en_US:en \
  LC_ALL=en_US.UTF-8

