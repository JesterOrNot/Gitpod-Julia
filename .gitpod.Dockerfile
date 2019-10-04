FROM gitpod/workspace-full

USER root

RUN sudo apt-get update && sudo apt-get install build-essential libatomic1 python gfortran perl wget m4 cmake pkg-config --yes
RUN mkdir -p /home/gitpod/.julia && cd /home/gitpod/.julia && wget -c https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.1-linux-x86_64.tar.gz && tar xvfz julia-1.0.1-linux-x86_64.tar.gz
RUN mv /home/gitpod/.julia/julia-1.0.1/bin/julia /usr/bin
RUN mv /home/gitpod/.julia/julia-1.0.1/lib/libjulia.so /usr/lib
RUN mv /home/gitpod/.julia/julia-1.0.1/lib/libjulia.so.1 /usr/lib
RUN mv /home/gitpod/.julia/julia-1.0.1/lib/libjulia.so.1.0 /usr/lib
RUN mv /home/gitpod/.julia/julia-1.0.1/lib/julia/* /usr/lib