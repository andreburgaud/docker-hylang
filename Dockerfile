FROM    python:3.10.0a7-alpine3.13

ENV     HYLANG_VERSION=1.0a1 \
        maintainer="andre.burgaud@gmail.com"

LABEL   hylang.version=$HYLANG_VERSION
LABEL   python.version=$PYTHON_VERSION

RUN     pip install --no-cache-dir --upgrade pip && \
        pip install --no-cache-dir hy==$HYLANG_VERSION

CMD ["hy"]
