#!/bin/sh

# Define the ZSH_CUSTOM/plugins directory
ZSH_CUSTOM_PLUGINS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"

# Check if the ZSH_CUSTOM/plugins directory exists
if [ -d "$ZSH_CUSTOM_PLUGINS_DIR" ]; then
    echo "Directory $ZSH_CUSTOM_PLUGINS_DIR exists. Cloning repositories..."

    # Define the list of repositories to clone
    REPOS=(
        "https://github.com/zsh-users/zsh-autosuggestions"
        "https://github.com/jeffreytse/zsh-vi-mode"
        "https://github.com/zsh-users/zsh-syntax-highlighting"
    )

    # Change to the plugins directory
    cd "$ZSH_CUSTOM_PLUGINS_DIR" || exit

    # Clone each repository if it is not already cloned
    for REPO in "${REPOS[@]}"; do
        REPO_NAME=$(basename "$REPO")
        if [ ! -d "$REPO_NAME" ]; then
            echo "Cloning $REPO..."
            git clone "$REPO"
        else
            echo "Repository $REPO_NAME already exists. Skipping clone."
        fi
    done
else
    echo "Directory $ZSH_CUSTOM_PLUGINS_DIR does not exist. Please create it first."
    exit 1
fi
