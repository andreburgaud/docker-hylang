FROM       alpine:edge
LABEL      hylang.version=0.13.1
LABEL      python.version=3.6.3-r5

RUN apk add --no-cache python3=3.6.3-r5 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -sf /usr/bin/pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN apk add --no-cache git && \
    pip install --upgrade astor && \
    pip install git+git://github.com/hylang/hy.git@v0.13.1 && \
    apk del git

CMD ["hy"]
