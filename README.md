# runlike

A modern dockerized [runlike](https://github.com/lavie/runlike).

## Installation

1. Build container

   ```bash
   docker build -t runlike .
   ```

2. Add alias to `.bashrc`/`.zshrc`:

   ```bash
   alias runlike="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock runlike runlike --no-name --pretty --no-hostname --no-macaddress --no-labels --no-runtime --no-workdir --no-detach --make-interactive"
   ```
