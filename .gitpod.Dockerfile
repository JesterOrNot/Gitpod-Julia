FROM gitpod/workspace-full

USER root

RUN sudo apt-get update && sudo apt -y install build-essential
RUN mkdir -p /home/gitpod/.julia && cd /home/gitpod/.julia
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.1-linux-x86_64.tar.gz | tar xvfz julia-1.0.1-linux-x86_64.tar.gz
ENV PATH="$PATH:/home/gitpod/.julia/swift-5.1-RELEASE-ubuntu18.04/usr/bin"
