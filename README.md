# Frontend Dotfiles

Scripts for making frontend development easier at Socotra

Helpful getting started tutorial this repo is based on can be found here: https://scriptingosx.com/2019/06/moving-to-zsh/

## Installation

Create a .zshenv file.

```shell
% touch ~/.zshenv
```

Update your ZDOTDIR environment variable with the path of this repo.

```shell
% echo ZDOTDIR=$HOME/Code/socotra/fe-zsh-dotfiles >> ~/.zshenv # (this is this repo's path)
```


Replace keys with secrets from 1Password in .zprofile if you need them. **Do not commit these.**

```shell
# secret access variables (from 1password and git)
export AWS_ACCESS_KEY_ID=From1Password
export AWS_SECRET_ACCESS_KEY=From1Password
export GA_GTAG=G-From1Password

export GITHUB_USERNAME=GitHubUsermname
export GITHUB_APITOKEN=FromGitHub
```

Restart Terminal and enjoy!

## Recommended Extensions

[shell-format](https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format): Formatter for shell scripts

[ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck): Linter for shell scripts



## Usage

This repo comes with two functions, `fe` and `nvm_switch`.

The function `fe` will prompt for a repo / mode and set the correct environment variables / nvm version

The function `nvm_switch` will accept two parameters: `old` and `current`. 

## Example usage

Example usage: `nvm_switch`

```shell
% nvm_switch current
Now using node v16.13.0 (npm v8.1.0)
% nvm_switch old
Now using node v8.9.4 (npm v5.6.0)
```

Example usage: `fe`

```shell
% fe
1) fev1
2) fev2
3) configstudio
4) quit
Select a repo: 1
1) watch
2) host
3) minikube_host
4) minikube_watch
5) install
6) build
7) quit
Select a mode for FEV1: 1
```