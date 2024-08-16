install:
	cp "gitconfig" ~/.gitconfig
	cp "gitignore_global" ~/.gitignore_global
	cp "zshrc" ~/.zshrc
	cp "exports" ~/.exports
	cp "aliases" ~/.aliases
	cp "vimrc" ~/.vimrc
	mkdir ~/.vim
	mkdir ~/.vim/colors
	mkdir ~/.vim/syntax
	mkdir ~/.vim/undodir
	cp "colors/gruvbox.vim" ~/.vim/colors/gruvbox.vim
	cp "colors/monokai.vim" ~/.vim/colors/monokai.vim
	cp "syntax/proto.vim" ~/.vim/syntax/proto.vim
