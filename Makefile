all:
	ln -s $(CURDIR)/git-prompt.sh ~/.git-prompt.sh
	ln -s $(CURDIR)/gitconfig ~/.gitconfig
	ln -s $(CURDIR)/bash_profile ~/.bash_profile
	ln -s $(CURDIR)/inputrc ~/.inputrc
	ln -s $(CURDIR)/vim ~/.vim
	ln -s $(CURDIR)/vimrc ~/.vimrc
	ln -s $(CURDIR)/gvimrc ~/.gvimrc

clean:
	rm -f ~/.git-prompt.sh ~/.gitconfig ~/.bash_profile ~/.inputrc ~/.vimrc ~/.gvimrc 
	rm -rf ~/.vim
