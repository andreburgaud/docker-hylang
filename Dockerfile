FROM    python:3.8.2-alpine3.11

ENV     HYLANG_VERSION=0.18.0 \
        maintainer="andre.burgaud@gmail.com"

LABEL   hylang.version=$HYLANG_VERSION
LABEL   python.version=$PYTHON_VERSION

RUN pip install hy==$HYLANG_VERSION --no-cache-dir

CMD ["hy"]