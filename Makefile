INSTALL_DIR=/usr/share/fonts/X11/misc

all: termentis.bdf
	bdftopcf -t termentis.bdf -o termentis.pcf

install: termentis.pcf
	install termentis.pcf ${INSTALL_DIR}
	@echo
	@echo The font was copied successfully, now follow these steps
	@echo to complete your installation:
	@echo " - go in ${INSTALL_DIR} and run mkfontdir"
	@echo " - run fc-cache -vfr"
	@echo " - run xset fp rehash"
	@echo

clean:
	rm -f termentis.pcf
	rm -f *.bak *.backup

