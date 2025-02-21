FROM ubuntu:noble

RUN apt update
RUN apt install -y cargo git

ENV PATH="/root/.cargo/bin:$PATH"

RUN cargo install just 

RUN git clone --recurse-submodules https://github.com/k4yt3x/video2x.git && \
    cd video2x && \
    just ubuntu2404