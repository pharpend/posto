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

The "configuration option" field, means that the config file will have
something like this:

```yaml
keys:
  - 'q': quit
  - 'u': parent
  - '^': parent
  - 'd': doc
  - 'Esc': menu
  - 'h': left
  ...
```

#### Basics

| Action | Keys | Configuration option |
| --- | --- | --- |
| Quit | `q` | `quit` |
| Parent | `u`, `^` | `parent` |
| Documentation | `d`, `?` | `doc`, `documentation` |
| Menu | `Esc` | `menu` |

#### Movement

| Action | Keys | Configuration option |
| --- | --- | --- |
| Column Left | `h`, `←` | `left` |
| Row Down | `j`, `↓` | `up` |
| Row Up | `k`, `↑`| `down` |
| Column Right | `i`, `→` | `right` |

#### Reading and responding

| Action | Keys | Configuration option |
| --- | --- | --- |
| New | `n` | `new` |
| Reply | `r` | `reply` |

#### Sorting mail

| Action | Keys | Configuration option |
| --- | --- | --- |
| Copy | `C` | `copy`, `cp` |
| Synchronize/update | `g` | `sync`, `update` |
| Sort by current column | `s` | `sort` |
| Move (rename) | `R` | `mv`, `move`, `rename` |
| Mark | `m` | `mark` |
