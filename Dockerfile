FROM docker:latest

RUN apk add --no-cache python3 py3-pip curl

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH"

# Copy poetry files
COPY runlike/pyproject.toml runlike/poetry.lock* /runlike/
COPY runlike/runlike /runlike/runlike
WORKDIR /runlike

# Install dependencies using Poetry with virtualenv
RUN poetry config virtualenvs.in-project true \
    && poetry install --no-interaction --no-ansi

# Set the virtual environment path
ENV PATH="/runlike/.venv/bin:$PATH"

CMD ["runlike"]
