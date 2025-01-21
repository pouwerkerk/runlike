# runlike

Docker image based on [assaflavie/runlike](https://hub.docker.com/r/assaflavie/runlike/) for running [runlike](https://github.com/lavie/runlike) will print out the command to run a similar container.

## Installation

1. Build container or pull from [Docker Hub](<[text](https://hub.docker.com/r/pouwerkerk/runlike)>).

   ```bash
   # build
   docker build -t runlike .
   # or pull
   docker pull pouwerkerk/runlike
   ```

2. Add alias to `.bashrc`/`.zshrc`:

   ```bash
   alias runlike="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock runlike runlike --no-name --pretty --no-hostname --no-macaddress --no-labels --no-runtime --no-workdir --no-detach --make-interactive"
   ```
