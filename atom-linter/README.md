# atom-linter

## Build

    docker build . -t atom-linter

## Installation
*   Install Docker
*   Install Atom
*   Install the linter and linter-* atom packages
*   Create the following file **/usr/local/bin/rubocop**:
    ```bash
    #!/bin/bash

    docker run -i --rm -v $(pwd):$(pwd) atom-linter rubocop $@
    ```
*   Make it executable: `sudo chmod +x /usr/local/bin/rubocop`
