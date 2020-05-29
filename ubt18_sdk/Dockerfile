FROM ubuntu:18.04
RUN apt-get clean \
    && apt-get -qq update --fix-missing \
    && apt-get -qq install wget bash-completion\
    # && apt-get -qq install -y localepurge \
    # && locale-gen en_US en_US.UTF-8 \
    # && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 \
    # && export LANG=en_US.UTF-8 \
    && apt-get -qq install make \
    && apt-get -qq install git ssh bzip2 software-properties-common

ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get install -y tzdata \
    && dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get -qq install python3-pip build-essential libssl-dev libffi-dev python3.6-dev python3-pil.imagetk
# COPY .pip /root/.pip
# COPY .pydistutils.cfg /root/
WORKDIR /root
RUN python3.6 -m pip install --user protobuf gcloud google-api-python-client 
RUN python3.6 -m pip install --user anki_vector
RUN python3.6 -m pip install --user pyopengl ipython
RUN apt-get install -yq build-essential libgl1-mesa-dev libglu1-mesa-dev \    
&& apt-get install -yq freeglut3-dev libglew-dev libgl1-mesa-glx libxmu-dev \
&& apt-get install -yq libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev libfreetype6-dev \
&& apt-get install -yq mesa-utils

