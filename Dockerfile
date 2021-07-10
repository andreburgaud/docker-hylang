FROM    python:3.10.0b3-alpine3.14

ENV     HYLANG_VERSION=1.0a3

LABEL   hylang.version=$HYLANG_VERSION \
        python.version=$PYTHON_VERSION \
        maintainer="andre.burgaud@gmail.com"

RUN     apk add --no-cache git

RUN     pip install --no-cache-dir --upgrade pip && \
        pip install --no-cache-dir hy==$HYLANG_VERSION

COPY entrypoint.sh hyrc.hy /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["hy"]
