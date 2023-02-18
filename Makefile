LN := ln -sf

install:
	$(LN) $(PWD)/shv $(HOME)/.local/bin/
	chmod +x $(PWD)/shv
