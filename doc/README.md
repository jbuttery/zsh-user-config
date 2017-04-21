Local configuration
-------------------

There are two things you're going to want to look at customizing as soon as you
get this repository cloned.  The first is "~/.zsh/local.zsh", which you'll need
to create from scratch by copying the example file from this doc directory.  It
contains individual variables with personal values, which will be used to
configure other variables throughout the config.

The other place to put your local configuration is "~/.zsh/local"; it's handled
as explained below.

Using the Makefile
------------------

One of the fancy things about Zsh is it allows you to compile your
configuration files for faster startup, using the "zcompile" utility.  A
Makefile is included that does the following:

- make

Compile all .zsh files

- make core

Only compile Zsh's own startup files (.zshrc and friends)

- make clean

Delete all compiled Zsh files (they end in .zwc)

Directory for local configurations
----------------------------------

The directory "~/.zsh/local" is for site-specific configurations, so you don't
have to maintain a diff from the repository files.

Each startup file (.zshenv, .zlogin, .zprofile, .zshrc, and .zlogout) has a
corresponding directory here.  At the end of each config file, there's a line
that will source any file ending with ".zsh" in the corresponding directory.
Currently it's not recursive, so any directories (and their files) will be
ignored.

The directories "functions" and "functions/completion" are added to the
function search path ($fpath).

Other than the above, you're welcome to put whatever you want in here.
