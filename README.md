# development

## Build

    docker build . -t development

## Run new container

    docker run -it --rm \
    -v ~/dotfiles/.vim:/root/.vim \
    -v $(pwd):/usr/local/src \
    development \
    bash -l

## Shell Font

DejaVu Sans Mono for Powerline 12 pt.
