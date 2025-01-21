FROM docker:latest

RUN apk add --no-cache python3 py3-pip

RUN python3 -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

COPY runlike/runlike /runlike/runlike
COPY setup.py /runlike/setup.py
RUN cd /runlike && pip3 install .

ENTRYPOINT ["runlike"]
