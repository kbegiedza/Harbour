FROM jupyter/base-notebook:hub-1.4.1

ENV DEBIAN_FRONTEND noninteract

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64ive

USER root

RUN apt update -q && apt install -yq --no-install-recommends \
    zip \
    gcc \
    unzip \
    libc-dev \
    python3-opencv \
    build-essential \
    apt-transport-https

USER $NB_USER

RUN python3 -m pip install --quiet --no-cache-dir \
    pycocotools \
    opencv-python \
    ipywidgets==7.6.3 \
    torch==1.7.1+cu110 \
    torchvision==0.8.2+cu110 \
    torchaudio==0.7.2 \
    -f https://download.pytorch.org/whl/torch_stable.html