# posto specification

Rough, informal specification for posto.

## Features

* Configurable keybindings
* YAML configuration file
* Extensive built-in documentation
* Multiple mailboxes
* POP, IMAP, and SMTP support
* TLS support
* PGP support
* GMail support

# User interface

## Command line options

`optparse-applicative` and friends will do much of the work for us.

* `--help` prints the version
* `--version` prints the version
* `license` prints the version
* `config` will print keybindings and current full configuration

## Configurable keybindings

### Default keybindings

Sort of like `vi` crossed with `dired` keybindings

#### Basics

| Action | Keys |
| --- | --- |
| Quit | `q` |
| Parent | `u`, `^` |
| Documentation | `d`, `?` |
| Menu | `Esc` |

#### Movement

| Action | Keys |
| --- | --- |
| Column Left | `h`, `LeftArrow` |
| Row Up | `j`, `UpArrow` |
| Row Down | `k`, `DownArrow` |
| Column Right | `i`, `RightArrow` |

#### Reading and responding

| Action | Keys |
| --- | --- |
| New | `n` |
| Reply | `r` |

#### Sorting mail

| Action | Keys |
| --- | --- |
| Copy | `C` |
| Synchronize/update | `g` |
| Sort by current column | `s` |
| Move (rename) | `R` |
| Mark | `m` |
