LN := ln -sf
DOCS := docs

install:
	$(LN) $(PWD)/shv $(HOME)/.local/bin/
	chmod +x $(PWD)/shv

doc:
	pandoc -s -f markdown -t man $(DOCS)/shv.md -o $(DOCS)/shv.1
	pandoc -s -f markdown -t html $(DOCS)/shv.md -o $(DOCS)/shv.html
