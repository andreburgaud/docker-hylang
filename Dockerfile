FROM    python:3.9.1-alpine3.12

ENV     HYLANG_VERSION=0.19.0 \
        maintainer="andre.burgaud@gmail.com"

LABEL   hylang.version=$HYLANG_VERSION
LABEL   python.version=$PYTHON_VERSION

RUN pip install hy==$HYLANG_VERSION --no-cache-dir

CMD ["hy"]
