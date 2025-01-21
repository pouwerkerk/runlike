FROM docker:latest

RUN apk add --no-cache python3 py3-pip curl

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Set up virtual environment
RUN python3 -m venv /app/venv
ENV PATH="/app/venv/bin:/root/.local/bin:$PATH"

# Copy poetry files
COPY runlike/runlike /runlike
COPY runlike/pyproject.toml /runlike/pyproject.toml
COPY runlike/poetry.lock /runlike/poetry.lock
WORKDIR /runlike

# Install dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Copy source code
COPY runlike/runlike /runlike/runlike

ENTRYPOINT ["runlike"]
