FROM       python:3.7-alpine3.8

ENV HYLANG_VERSION=0.15.0

LABEL      hylang.version=$HYLANG_VERSION
LABEL      python.version=$PYTHON_VERSION

RUN pip install hy==$HYLANG_VERSION --no-cache-dir

CMD ["hy"]