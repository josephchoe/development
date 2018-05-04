# heroku

## Build

    docker build . -t heroku

## Run new container

    docker run -it --rm \
    -v ~/dotfiles/.bash_profile:/root/.bash_profile \
    -v ~/dotfiles/.git_config:/root/.git_config \
    -v ~/dotfiles/.vim:/root/.vim \
    -v $(pwd):/usr/local/src \
    heroku \
    bash -l

## Run heroku app

    heroku login

    heroku run bash -a app-name
