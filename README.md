# Frontend Dotfiles

Scripts for making frontend development easier at Socotra

If you haven't already, please work through [this guide first](https://socotra.atlassian.net/wiki/spaces/ENG/pages/2287075338/Front+End+Developer+Setup).

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
√ ~ % fe
1) fev1            2) fev2            3) configstudio    4) quit            
Select a repo: 2
1) start           2) minikube_start  3) install         4) quit            
Select a mode for FEV2: 1
Starting FEV2
Now using node v17.2.0 (npm v8.1.4)
```
