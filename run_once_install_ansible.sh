#!/bin/bash

install_on_glinux() {
  echo "Install on gLinux not supported."
}

install_on_mac() {
  brew install ansible
}

OS="$(uname -s)"

case "${OS}" in
  Linux*)
    install_on_glinux
    ;;
  Darwin*)
    install_on_mac
    ;;
  *)
    echo "Unsupported operating system: ${OS}"
    exit 1
    ;;
esac

ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."
