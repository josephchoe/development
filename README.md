# development

## Build

    docker build . -t development

## Create persistent container

    docker run -d --name=development development

## Run new container with persisted storage volume

    docker run --volumes-from=development -v $(pwd):/usr/local/src -it --rm development bash -l
