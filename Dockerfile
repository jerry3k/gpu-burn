FROM nvidia/cuda:9.0-base

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN wget https://github.com/jerry3k/gpu-burn/raw/master/gpu_burn-1.0.tar.gz \
    && tar xzf gpu_burn-1.0.tar.gz \
    && make

ENTRYPOINT [ "/root/gpu_burn" ]
CMD [ "10" ]
