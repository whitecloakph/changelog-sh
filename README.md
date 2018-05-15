# Changelog.sh

Changelog.sh is a tool to keep a changelog without conflicts. It supports rendering your changelog into a standard [keepachangelog](https://keepachangelog.com) format.

## Motivation

Maintaining a CHANGELOG.md is annoying because it's prone to merge conflict. Multiple developer adding line to a single file will confuse git as to which change should go first. 

## Solution

The solution is to create a file for each changelog entry that can be commited to git. This strategy avoid merge conflicts when multiple developers add a changelog entry.

## How it works

Having a `changelog` directory looking like this:

```
changelog/
  2.0.1/
    added/
      20180406201409
    fixed/
      20180406202703
      20180411092409
  2.0.0/
    changed/
      20180322144612
  1.1.0/
    added/
      20180402183256
  1.0.0/
    added/
      20180405192450
```

would yield a CHANGELOG.md that would like like this:

```
## [2.0.1]
### Added
- Never gonna give you up

### Fixed
- [123] Never gonna let you down
- [124] Never gonna run around and desert you

## [2.0.0]
### Changed
- Never gonna make you cry

## [1.1.0]
### Added
- Never gonna say good bye

## [1.0.0]
### Added
- Never gonna tell a lie and hurt you
```

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
