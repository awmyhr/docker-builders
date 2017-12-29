# Build environments in a Docker Container _(docker-builders)_

> Build containers for various distros

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)

## Install

Running build.sh will create all the builders currently supported.

## Usage

These should be used in the Dockerfile FROM entry for building projects. The most
commonly required packages I know of are installed, if a particular project
requires more, they should be installed in the first few steps. The $container
variable, as well as any updates/upgrades needed, are already done.

## Maintaniers

- awmyhr <awmyhr@gmail.com>

## Contribute

PRs accepted.

## License

Apache-2.0 (c) 2017 awmyhr
