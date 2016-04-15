Dotfiles
========

This is my personal repository of [dotfiles](https://dotfiles.github.io/). I
use [`Make(1)`](web.mit.edu/gnu/doc/html/make_1.html) to bootstrap them around
town.


Installation
------------

    $ git clone git://github.com/ljholish/dotfiles.git ~/dotfiles
    $ cd ~/dotfiles
    $ make
    $ # and optionally
    $ make install-openbox

The default target will install the core terminal-only files and the
install-openbox target is for X and Openbox. The Makefile will clobber your
files so use make's **dry run option (-n) first**.


Tools
-----

Configuration is included for:

*   [Git](http://git-scm.com/) - Distributed version control system
*   [openbox](http://openbox.org/) -  X window manager
*   [Mutt](http://www.mutt.org/) - MUA
*   [`mysql(1)`](http://linux.die.net/man/1/mysql) - Command-line MySQL client
*   [tmux](https://tmux.github.io/) - Terminal multiplexer
*   [`mysql(1)`](http://linux.die.net/man/1/mysql) - Command-line MySQL client
*   [`psql(1)`](http://linux.die.net/man/1/psql) - Command-line PostgreSQL client
*   [Vim](http://www.vim.org/) - Vi IMproved, a text editor
*   [X11](http://www.x.org/wiki/) - Windowing system with network transparency
    for Unix


Shell
-----

My shell of choice is Zsh. I use the [prezto configuration framework for
Zsh](https://github.com/sorin-ionescu/prezto). My fork can be found here:

[prezto](https://github.com/ljholish/prezto)

TODO
----

Vim plugins. Python virtualenv.


License
-------

Public domain; see the included `UNLICENSE` file.
