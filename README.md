# Delta Gitster

An [`OMZ`](https://github.com/ohmyzsh/ohmyzsh "ohmyzsh/ohmyzsh") theme inspired by [`ergenekonyigit/lambda-gitster`](https://github.com/ergenekonyigit/lambda-gitster "ergenekonyigit/lambda-gitster")

## Prerequisite

This theme is built specifically for Oh My ZSH. In order to use it, the following must be installed first:

1. ZSH
2. Oh My ZSH

## Installation

You can clone this theme via the following command:

```sh
curl https://raw.githubusercontent.com/raschety/delta-gitster/refs/heads/main/delta-gitster.zsh-theme -o $ZSH_CUSTOM/themes/delta-gitster.zsh-theme
```

Alternatively, you can run the installation script. This will run several
checks in order to make sure your current shell is compatible with the theme.

You can clone this repository from GitHub and run the installation script via
the following commands:

```sh
git clone https://github.com/raschety/delta-gitster
cd delta-gitster
zsh install.sh
```

You can also run the installation script directly without cloning this
repository via the following command:

```sh
curl -o- https://raw.githubusercontent.com/raschety/delta-gitster/refs/heads/main/install.sh | zsh
```


Once completed, modify the following in your `~/.zshrc` file:

```diff
- ZSH_THEME="..."
+ ZSH_THEME="delta-gitster"
```

If you're using the random themes feature, modify the following:

```diff
ZSH_THEME="random"

- ZSH_THEME=(...)
+ ZSH_THEME=(... "delta-gitster")
```

## License

This project is licensed under
[**The MIT License**](https://opensource.org/license/mit "The MIT License").
You can read [`LICENSE`](./LICENSE "LICENSE") for more information.
