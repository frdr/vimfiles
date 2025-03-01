GITIGNORE:=~/.config/git/ignore

.PHONY: install
install: ~/.editorconfig $(GITIGNORE)
	vim -c 'PlugInstall|qa'

.PHONY: update
update:
	vim -c 'PlugUpgrade|PlugUpdate|qa'

.PHONY: clean
clean:
	rm -f ~/.editorconfig
	rm -f $(GITIGNORE)

~/.editorconfig: .editorconfig
	ln --symbolic --relative .editorconfig ~/.editorconfig

$(GITIGNORE):
	echo '.*.sw[po]' > $(GITIGNORE)
