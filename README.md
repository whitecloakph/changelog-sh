# Changelog.sh

Changelog.sh is a tool to keep a changelog without conflicts. It supports rendering your changelog into a standard [keepachangelog](https://keepachangelog.com) format.

## Getting Started

### Basic Installation

Changelog.sh is installed by running one of the following commands in your terminal. You can install this via the command-line with either `curl` or `wget`.

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/whitecloakph/changelog-sh/master/tools/install.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/whitecloakph/changelog-sh/master/tools/install.sh)"
```


### Basic Usage

#### Initialize

```shell
change init
```

#### Add new change

```shell
change new {type_of_change} {message}
```

#### Preview changelog in Markdown format

```shell
change preview
```

#### Release changes

```shell
change release {version}
```
