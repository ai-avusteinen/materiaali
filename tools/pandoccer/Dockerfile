FROM ubuntu:24.04
ARG TARGETARCH

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get update && apt-get install -y \
    ca-certificates wget xz-utils inotify-tools && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /asdf && cd /asdf && \
    wget -O pandoc.deb "https://github.com/jgm/pandoc/releases/download/3.8.3/pandoc-3.8.3-1-${TARGETARCH}.deb" && \
    dpkg -i pandoc.deb && \
    rm -rf /asdf

RUN case "${TARGETARCH}" in \
        "arm64") arch="ARM64" ;; \
        "amd64") arch="X64" ;; \
        *) echo "Unsupported architecture: ${TARGETARCH}"; exit 1 ;; \
    esac && \
    mkdir /asdf && cd /asdf && \
    url="https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.22b/pandoc-crossref-Linux-${arch}.tar.xz" && \
    wget -O pandoc-crossref.tar.xz "$url" && \
    mkdir -p /opt/pandoc-crossref && \
    tar -xJf pandoc-crossref.tar.xz -C /opt/pandoc-crossref && \
    rm -rf /asdf

COPY styles.css /styles.css
COPY scripts.js /scripts.js
COPY template.html /template.html

WORKDIR /src

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD [ "dev" ]
ENTRYPOINT [ "/entrypoint.sh" ]
