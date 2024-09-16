# 🖥️ Setting up a new Mac?

Install these apps first:
* [Visual Studio Code](https://code.visualstudio.com/)
* [Spotify](https://www.spotify.com/de-en/download/mac/)
* [Raycast](https://www.raycast.com)
* [Rectangle](https://rectangleapp.com)
* [iTerm2](https://iterm2.com)
* [Xcode](https://apple.com/xcode)
* [Scroll Reverser](https://pilotmoon.com)
* [Setapp](https://setapp.com)
  * Bartender
  * CleanMyMac X
  * CleanShot X
  * iStat Menus
  * ...and anything else :)

# 💲 Setting up a new Shell environment on MacOS?

1. Install [`oh-my-zsh`](https://ohmyz.sh/)

2. Install [`homebrew`](https://brew.sh)

```sh
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/rpalaguachi/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
```

3.  Install [`neovim`](https://neovim.io/)

```sh
brew install neovim
```

5.  Install [`chezmoi`](https://www.chezmoi.io/quick-start/)

```sh
brew install chezmoi
```

# Using `chezmoi` to setup, install, and modify dotfiles:

1. Set any machine-specific data in the config file. By default it lives at `~/.config/chezmoi/chezmoi.toml`.
```toml
# This toml file is NOT managed by chezmoi. Instead this
# file tells chezmoi what machine-specific data you wish to store.
[data]
  email = "email@hostname.com"
  machine = "personal_macbook"
```

2. If you already have an existing chezmoi environment, sync to Github remote in one line:
```sh
chezmoi init --apply $GITHUB_USERNAME
```

3. If you need to make edits to your dotfiles, use:
```sh
chezmoi edit <filename>
```

4. Once you're ready to push your changes to remote, use:
```sh
chezmoi git -- add
chezmoi git -- commit -m "Update dotfiles"
```

5. On any machine, you can pull and apply the latest updates with:
```sh
chezmoi update -v
```

Read more about chezmoi's daily operations at
[chezmoi.io/user-guide/daily-operations](chezmoi.io/user-guide/daily-operations)
