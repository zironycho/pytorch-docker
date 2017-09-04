FROM ubuntu:16.04
RUN apt-get update \
	&& apt-get install -y \
		wget \
		build-essential checkinstall \
		libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz
RUN tar xvf Python-3.6.2.tar.xz \
	&& cd Python-3.6.2 \
	&& ./configure \
	&& make altinstall \
	&& rm /Python-3.6.2.tar.xz

RUN pip3.6 install http://download.pytorch.org/whl/cu75/torch-0.2.0.post3-cp36-cp36m-manylinux1_x86_64.whl \
	&& pip3.6 install torchvision

