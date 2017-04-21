all:
	@for zshFile in .zshenv .zprofile .zshrc .zlogin .zlogout *.zsh; do   \
		/usr/bin/zsh -c "zcompile $${zshFile}"              ; \
	done

core:
	@for zshFile in .zshenv .zprofile .zshrc .zlogin .zlogout; do   \
		/usr/bin/zsh -c "zcompile $${zshFile}"        ; \
	done

clean:
	@rm -rf .*.zwc *.zwc
