# Build on top of the lambci build image used for other runtimes
FROM lambci/lambda-base:build
LABEL maintainer="nadirsidi@gmail.com"

# Specify the version of R
ENV VERSION=3.5.1

# Create a working directory
WORKDIR /tmp/r-runtime

# Copy in the excellent work of bakdata
COPY ./build_r.sh ./build_runtime.sh ./runtime.r ./bootstrap ./

RUN echo $VERSION

# Build the R executable and runtime
RUN ./build_r.sh \
  ./build_runtime.sh
