FROM python:3.12-slim-bookworm

RUN pip install runlike

ENTRYPOINT ["runlike"]
