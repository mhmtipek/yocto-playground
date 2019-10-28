FROM ubuntu:16.04

RUN apt-get update && apt-get -y install gawk wget git-core \
    diffstat unzip texinfo gcc-multilib build-essential \
    chrpath socat cpio python python3 python3-pip \
    python3-pexpect xz-utils debianutils iputils-ping \
    libsdl1.2-dev xterm tar locales curl vim tree \
    autoconf libtool rpm

# dash does not support source command. Replace it with bash
RUN rm /bin/sh && ln -s bash /bin/sh

# Setup locale
RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# User management
RUN groupadd -g 1000 build && useradd -u 1000 -g 1000 -ms /bin/bash build && usermod -a -G sudo build && usermod -a -G users build

# Install repo
RUN curl -o /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo && chmod a+x /usr/local/bin/repo

# Setup root password
RUN echo "root:1234" | chpasswd

# Setup yocto install path
ENV YOCTO_INSTALL_PATH "/opt/yocto"
RUN install -o 1000 -g 1000 -d $YOCTO_INSTALL_PATH
USER build
WORKDIR "${YOCTO_INSTALL_PATH}/poky"

