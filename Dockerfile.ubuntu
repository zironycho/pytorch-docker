FROM ubuntu:16.04
RUN apt-get update \
	&& apt-get install -y \
		wget \
		build-essential checkinstall \
		libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
	&& rm -rf /var/lib/apt/lists/*

ENV py_version="3.6.4"
ENV py_package="Python-$py_version"

RUN wget https://www.python.org/ftp/python/$py_version/$py_package.tar.xz
RUN tar xvf $py_package.tar.xz \
	&& cd $py_package \
	&& ./configure \
	&& make altinstall \
	&& rm /$py_package.tar.xz

RUN pip3.6 install http://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp36-cp36m-linux_x86_64.whl \
	&& pip3.6 install torchvision

