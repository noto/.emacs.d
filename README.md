# .emacs.d

	cd .emacs.d
	cask install
	(and start emacs)

## note

* If "inits" is a symbolic link, init-loader cannot load it.
* If you want machine-specific settings, make a file like "inits/04_local.el".
