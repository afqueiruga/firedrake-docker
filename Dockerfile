FROM debian:latest

RUN apt-get update
RUN apt-get -y install cmake make g++ gfortran git python
RUN apt-get -y install libblas-dev liblapack-dev
RUN apt-get -y install openmpi-bin openmpi-common libopenmpi-dev libopenmpi2
# RUN apt-get -y install petsc
RUN apt-get update

RUN apt-get -y install build-essential autoconf automake
RUN apt-get -y install curl mercurial git-core zlib1g-dev
RUN apt-get -y install python3 python3-pip python3-dev python3-venv python3-tk

# Download the script
RUN curl -O https://raw.githubusercontent.com/firedrakeproject/firedrake/master/scripts/firedrake-install
RUN apt-get -y install python3-flake8

# Run the script
RUN python3 firedrake-install
RUN apt-get -y install python-flake8 python-numpy python3-numpy
# Set up env
RUN source /firedrake/bin/activate
RUN mkdir /home/drake
# Test command
RUN cd /firedrake/src/firedrake ; make test
ENTRYPOINT ["bash"]
# CMD ["bash"]
# SHELL ["bash"]
