# mutt

## Build

    docker build . -t mutt

## Run new container

    docker run -it --rm \
    -e GMAIL=jchoey \
    --name mutt \
    mutt
