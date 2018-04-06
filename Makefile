IGNORES := .git .DS_Store
TARGETS := $(filter-out $(IGNORES), $(wildcard .??*))

.PHONY: all
all:
	@$(foreach file, $(TARGETS), ln -sfn $(PWD)/$(file) $(HOME)/$(file);)
