INSTALL_DIR=/usr/share/fonts/X11/misc

all: termentis.pcf termentis12.pcf

termentis.pcf: termentis.bdf
	bdftopcf -t termentis.bdf -o termentis.pcf

termentis12.pcf: termentis12.bdf
	bdftopcf -t termentis12.bdf -o termentis12.pcf

install:
	install -m 644 termentis.pcf ${INSTALL_DIR}
	install -m 644 termentis12.pcf ${INSTALL_DIR}
	@echo
	@echo The font was copied successfully, now follow these steps
	@echo to complete your installation:
	@echo " - go in ${INSTALL_DIR} and run mkfontdir"
	@echo " - run fc-cache -vfr"
	@echo " - run xset fp rehash"

clean:
	rm -f *.pcf
	rm -f *.bak *.backup

