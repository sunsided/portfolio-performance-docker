FROM openjdk:16-slim
LABEL maintainer="Markus Mayer <widemeadows@gmail.com>"

ARG VERSION=0.48.1
ENV ARCHIVE=https://github.com/buchen/portfolio/releases/download/${VERSION}/PortfolioPerformance-${VERSION}-linux.gtk.x86_64.tar.gz

ENV DISPLAY=:0

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    ca-certificates curl \
    libgtk2.0-0 libswt-gtk* libcanberra-gtk-module libwebkitgtk-3.0.0 \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash portfolio && mkdir /data && chown portfolio /opt /data
USER portfolio

RUN cd /opt && (curl -L ${ARCHIVE} | tar xvz)

ENV _JAVA_OPTIONS="-Djavafx.cachedir=/tmp"

WORKDIR /data
CMD /opt/portfolio/PortfolioPerformance
