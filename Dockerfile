FROM       alpine:edge
LABEL      hylang.version=0.13.0+176.g97987d7
LABEL      python.version=3.6.3-r7
LABEL      astor.version=0.6.1

RUN apk add --no-cache python3=3.6.3-r7 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -sf /usr/bin/pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN apk add --no-cache git && \
    pip install git+git://github.com/hylang/hy.git && \
    apk del git

CMD ["hy"]
