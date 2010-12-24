INSTALL_DIR=/usr/share/fonts/X11/misc

all: termentis12.pcf termentis14.pcf termentis24.pcf

termentis12.pcf: termentis12.bdf
	bdftopcf -t termentis12.bdf -o termentis12.pcf

termentis14.pcf: termentis14.bdf
	bdftopcf -t termentis14.bdf -o termentis14.pcf

termentis24.pcf: termentis24.bdf
	bdftopcf -t termentis24.bdf -o termentis24.pcf

install:
	install -m 644 termentis12.pcf ${INSTALL_DIR}
	install -m 644 termentis14.pcf ${INSTALL_DIR}
	install -m 644 termentis24.pcf ${INSTALL_DIR}
	@echo
	@echo The font was copied successfully, now follow these steps
	@echo to complete your installation:
	@echo " - go in ${INSTALL_DIR} and run mkfontdir"
	@echo " - run fc-cache -vfr && xset fp rehash"

clean:
	rm -f *.pcf
	rm -f *.bak *.backup

