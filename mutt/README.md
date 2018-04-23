# mutt

## Build

    docker build . -t mutt

## Run new container

    docker run -it --rm \
    -e GMAIL=???@gmail.com \
    -e GMAIL_PASS -e GMAIL_FROM \
    --name mutt \
    mutt
