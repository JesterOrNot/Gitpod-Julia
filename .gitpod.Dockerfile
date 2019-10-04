FROM gitpod/workspace-full

USER gitpod

# Install Julia dependencies
RUN sudo apt-get update && \
    sudo apt-get install build-essential libatomic1 python gfortran perl wget m4 cmake pkg-config --yes && \
    sudo rm -rf /var/lib/apt/lists/*

# Install Julia
RUN mkdir -p /home/gitpod/.julia && \
    cd /home/gitpod/.julia && \
    wget -c https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.1-linux-x86_64.tar.gz && \
    tar xvfz julia-1.0.1-linux-x86_64.tar.gz
ENV PATH="$PATH:/home/gitpod/.julia/julia-1.0.1/bin/"
