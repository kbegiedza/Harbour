ARG CUDA_VERSION=11.6.0
ARG OS_VERSION=ubuntu20.04

FROM nvcr.io/nvidia/cuda:${CUDA_VERSION}-devel-${OS_VERSION}

LABEL maintainer="Krzysztof Begiedza <contact@kbegiedza.eu>"

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    ## Install packages
    && apt-get -y install --no-install-recommends \
    curl ca-certificates \
    build-essential cmake cppcheck valgrind clang lldb llvm gdb \
    ## Post installation clean-up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*