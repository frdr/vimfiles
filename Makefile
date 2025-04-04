.PHONY: all
all:
	vim -c 'PlugInstall|qa'

.PHONY: update
update:
	vim -c 'PlugUpgrade|PlugUpdate|qa'
