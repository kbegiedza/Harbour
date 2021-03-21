FROM jupyter/base-notebook:lab-3.0.11

ENV DEBIAN_FRONTEND noninteract

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64ive

USER root

RUN apt update -q && apt install -yq --no-install-recommends \
    apt-transport-https \
    gcc \
    python3-opencv

USER $NB_USER

RUN python3 -m pip install --quiet --no-cache-dir \
    opencv-python \
    ipywidgets==7.6.3 \
    torch==1.8.0+cu111 \
    torchvision==0.9.0+cu111 \
    torchaudio==0.8.0 \
    -f https://download.pytorch.org/whl/torch_stable.html