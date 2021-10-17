# Memo

## ent

### Usage

| Command | Description |
|----|----|
| `scripts/ent init [schemas]` | initializes schema files |
| `scripts/ent describe ./ent/schema` | initializes schema files |
| `scripts/generate-ent.bash` | generates ORM code of ent |

`scripts/ent` is a wrapper script to run the `ent` command in a docker container.
You can execute `ent` instead if it is installed on your host machine.

## OpenAPI

### Usage

| Command | Description |
|----|----|
| `make api-skelton-server` | generates a skelton API server in Go into `internal/api/v1-default` |

After generating of the skelton server, implement a real API server in `internal/api/v1`.

## PlantUML

### Requirements

- Graphviz 2.44
    ```console
    $ curl -LO https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.1.tar.gz
    $ tar xvzf graphviz-2.44.1.tar.gz
    $ cd graphviz-2.44.1/
    $ ./configure
    $ make
    $ sudo make install
    ```
- PlantUML
    ```console
    $ sudo apt -y install plantuml
    ```
- IPA fonts
    ```
    $ sudo apt -y install fonts-ipafont fonts-ipaexfont
    ```

### Usage

Execute the following commands in `docs` directory.

| Command | Description |
|----|----|
| `make` | generates SVG files from PlantUML files in `docs/spec` |
