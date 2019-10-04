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
    tar xvfz julia-1.0.1-linux-x86_64.tar.gz && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/bin/julia /usr/bin && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/lib/libjulia.so /usr/lib && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/lib/libjulia.so.1 /usr/lib && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/lib/libjulia.so.1.0 /usr/lib && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/lib/julia/* /usr/lib && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/include/* /usr/include && \
    sudo mv /home/gitpod/.julia/julia-1.0.1/etc/julia /etc
