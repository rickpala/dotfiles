# 🖥️ Setting up a new Mac?

Install these apps first:
* [Raycast](https://www.raycast.com)
* [Rectangle](https://rectangleapp.com)
* [Setapp](https://setapp.com)
* [iTerm2](https://iterm2.com)
* [Xcode](https://apple.com/xcode)
* [Scroll Reverser](https://pilotmoon.com)

# 💲 Setting up a new Shell environment on MacOS?

1. Install [`zsh`](https://ohmyz.sh/)

2. Install [`homebrew`](https://brew.sh)

3. Install [`neovim`](https://neovim.io/)

4. Install [`chezmoi`](https://www.chezmoi.io/quick-start/)

If you already have an existing chezmoi environment, sync to Github remote in one line:
```sh
chezmoi init --apply $GITHUB_USERNAME
```

If you need to make edits to your dotfiles, use:
```sh
chezmoi edit <filename>
```

Once you're ready to push your changes to remote, use:
```sh
chezmoi git -- add
chezmoi git -- commit -m "Update dotfiles"
```

You can store machine-specific data in the config file. By default it is
`~/.config/chezmoi/chezmoi.toml`.

Read more about chezmoi's daily operations at
[chezmoi.io/user-guide/daily-operations](chezmoi.io/user-guide/daily-operations)

<hr />

# Manual `chezmoi` setup:

Using `chezmoi` you can quickly get set up with configs you're already used to.

```sh
# check out the repo and any submodules and optionally create a chezmoi config file for you.
chezmoi init https://github.com/rickpala/dotfiles.git

# Check what changes that chezmoi will make to your home directory by running:
chezmoi diff

# If you are happy with the changes that chezmoi will make then run:
chezmoi apply -v

# If you are NOT happy, invoke a merge tool to merge changes between the two files:
chezmoi merge $FILE

# On any machine, you can pull and apply the latest updates with:
chezmoi update -v
```
