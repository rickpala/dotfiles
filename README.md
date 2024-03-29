# Starting fresh?

1. Install [`zsh`](https://ohmyz.sh/)

2. Install [`homebrew`](https://brew.sh)

3. Install [`chezmoi`](https://www.chezmoi.io/quick-start/)

4. Install [`neovim`](https://neovim.io/)

Sync with `chezmoi` in one line:
```sh
chezmoi init --apply $GITHUB_USERNAME
```

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
