install:
	DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	ln -sf "$DOTFILES_DIR/gitconfig" ~/.gitconfig
	ln -sf "$DOTFILES_DIR/gitignore_global" ~/.gitignore_global
	ln -sf "$DOTFILES_DIR/zshrc" ~/.zshrc
	ln -sf "$DOTFILES_DIR/exports" ~/.exports
	ln -sf "$DOTFILES_DIR/aliases" ~/.aliases
	ln -sf "$DOTFILES_DIR/vimrc" ~/.vimrc
	ln -sf "$DOTFILES_DIR/pryrc" ~/.pryrc
	mkdir ~/.vim
	mkdir ~/.vim/colors
	ln -sf "$DOTFILES_DIR/colors/gruvbox.vim" ~/.vim/colors/gruvbox.vim
