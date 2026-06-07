# dotfiles

A collection of my personal dotfiles.

## Installation

Clone:

```bash
git clone https://github.com/boningmaple/dotfiles.git ~/.dotfiles
```

Install Homebrew packages (or you can manaully install what you want):

```bash
cd ~/.dotfiles
./install-homebrew-packages.sh
```

Use `stow` to install the dotfiles you want after that:

```bash
cd ~/.dotfiles
stow zsh
stow nvim
```

> [!NOTE]
> You need to install `stow` if you don't have `stow` command.
>
> ```bash
> brew install stow
> ```

## Credits

- [hamvocke](https://github.com/hamvocke/dotfiles)

