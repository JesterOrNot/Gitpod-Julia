FROM gitpod/workspace-full

USER root

RUN sudo apt-get update && sudo apt -y install build-essential
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.1-linux-x86_64.tar.gz
RUN tar xvfz julia-1.0.1-linux-x86_64.tar.gz
RUN sudo ln -s /home/ubuntu/julia-1.0.1/bin/julia /usr/local/bin/julia