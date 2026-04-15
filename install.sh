#!/bin/bash


echo "🚀 Iniciando a simbiose dos dotfiles..."

# Criar a pasta .config caso ela não exista
mkdir -p ~/.config

# Remover a pasta nvim padrão caso ela exista
rm -rf ~/.config/nvim

# Criar o link simbólico
ln -s ~/.dotfiles/nvim ~/.config/nvim

echo "✅ Neovim configurado com sucesso!"
