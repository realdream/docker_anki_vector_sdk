FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
COPY sources.list /etc/apt/
RUN rm -rf /etc/apt/apt.conf.d/docker-clean \
    && apt-get clean \
    && apt-get update --fix-missing \
    && apt-get -qq install apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
    && apt-get -qq install wget bash-completion vim \
    # && apt-get -qq install -y localepurge \
    # && locale-gen en_US en_US.UTF-8 \
    # && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 \
    # && export LANG=en_US.UTF-8 \
    && apt-get -qq install make \
    && apt-get -qq install git ssh bzip2 software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa \
    && apt-get -qq update \
    && apt-get -qq install python3.6 \
    && apt-get -qq install python3-pip \
    && apt-get -qq install build-essential libssl-dev libffi-dev python3.6-dev python3-pil.imagetk python3.6-tk \
    && apt-get -qq install net-tools \
    && apt-get -qq install build-essential libgl1-mesa-dev libglu1-mesa-dev \
    && apt-get -qq install freeglut3-dev libglew1.10 libglew-dev libgl1-mesa-glx libxmu-dev \
    && apt-get -qq install libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev libfreetype6-dev \
    && apt-get -qq install mesa-utils
RUN apt-get -qq install sudo \
    && groupadd -r user && useradd --create-home --gid user user && echo 'user ALL=NOPASSWD: ALL' > /etc/sudoers.d/user
USER user
WORKDIR /home/user
ENV HOME /home/user

COPY .pip /home/user/.pip
COPY .pydistutils.cfg /home/user/

RUN python3.6 -m pip install --user anki_vector \
    && python3.6 -m pip install --user pyopengl ipython
RUN echo "alias py='python3.6'" >> ~/.bashrc
