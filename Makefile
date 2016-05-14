# some tasks

FORMULAE = $(shell ls -1 *.rb | sed 's/\.rb//g')

ci: brew-update brew-tap $(FORMULAE)

brew-update:
	brew update

brew-tap:
	brew tap mrtazz/misc

%:
	brew install mrtazz/misc/$@
