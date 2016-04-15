.PHONY: install \
	install-git \
	install-openbox \
	install-maildir \
	install-mutt \
	install-mysql \
	install-postgresql \
	install-tmux \
	install-vim \
	install-X \
	
install : install-git \
	install-mutt \
	install-maildir \
	install-mysql \
	install-postgresql \
	install-tmux \
	install-vim
	@echo install: make complete!

install-X :
	install -pm 0644 -- X/Xresources "$(HOME)"/.Xresources
	install -pm 0644 -- X/xsession "$(HOME)"/.xsession

install-openbox : install-X
	install -m 0755 -d -- "$(HOME)"/.config/openbox
	install -pm 0644 -- openbox/rc.xml "$(HOME)"/.config/openbox/rc.xml
	install -pm 0644 -- openbox/menu.xml "$(HOME)"/.config/openbox/menu.xml
	install -pm 0644 -- openbox/environment "$(HOME)"/.config/openbox/environment
	install -pm 0755 -- openbox/autostart "$(HOME)"/.config/openbox/autostart
	@echo openbox: make complete!

install-git :
	install -pm 0644 -- git/gitconfig "$(HOME)"/.gitconfig
	install -pm 0644 -- git/gitconfig "$(HOME)"/.git_commit_msg.txt
	install -pm 0644 -- git/gitconfig "$(HOME)"/.gitignore_global

install-maildir :
	install -m 0755 -d -- \
		"$(HOME)"/Maildir/inbox/cur \
		"$(HOME)"/Maildir/inbox/new \
		"$(HOME)"/Maildir/inbox/tmp \
		"$(HOME)"/Maildir/outbox/cur \
		"$(HOME)"/Maildir/outbox/new \
		"$(HOME)"/Maildir/outbox/tmp

install-mutt :
	install -m 0755 -d -- "$(HOME)"/.mutt
	install -pm 0644 -- mutt/muttrc "$(HOME)"/.mutt/muttrc
	install -pm 0644 -- mutt/signature "$(HOME)"/.signature

install-mysql :
	install -pm 0640 -- mysql/my.cnf "$(HOME)"/.my.cnf

install-postgresql :
	install -pm 0644 -- postgresql/psqlrc "$(HOME)"/.psqlrc
	install -pm 0644 -- postgresql/pgclirc "$(HOME)"/.pgclirc

install-tmux :
	install -pm 0644 -- tmux/tmux.conf "$(HOME)"/.tmux.conf

install-vim : 
	install -pm 0644 -- vim/vimrc "$(HOME)"/.vimrc
	install -m 0755 -d -- "$(HOME)"/.vim/syntax
	install -pm 0644 -- vim/syntax/django.vim "$(HOME)"/.vim/syntax/django.vim
	install -pm 0644 -- vim/syntax/htmldjango.vim "$(HOME)"/.vim/syntax/htmldjango.vim
	install -pm 0644 -- vim/syntax/javascript.vim "$(HOME)"/.vim/syntax/javascript.vim
	install -pm 0644 -- vim/syntax/python.vim "$(HOME)"/.vim/syntax/python.vim
	install -pm 0644 -- vim/syntax/remind.vim "$(HOME)"/.vim/syntax/remind.vim
	install -pm 0644 -- vim/syntax/smarty.vim "$(HOME)"/.vim/syntax/smarty.vim
	install -pm 0644 -- vim/syntax/snippet.vim "$(HOME)"/.vim/syntax/snippet.vim
	install -pm 0644 -- vim/syntax/tmux.vim "$(HOME)"/.vim/syntax/tmux.vim

