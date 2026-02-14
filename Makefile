SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/usr/bin
INFODIR=${DESTDIR}/usr/share/doc/aur-git
LICENSEDIR=${DESTDIR}/usr/share/licenses/aur-git
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Script aur-git"
	@echo ":: Aguarde, instalando software aur-git em: ${BINDIR}"
	@install -Dm755 "usr/bin/aur-git" "/usr/bin/aur-git"
	@install -d ${LICENSEDIR}/
	@cp LICENSE ${LICENSEDIR}/
	@install -d ${INFODIR}/
	@cp Makefile README.md ${INFODIR}/
	@echo ":: Feito! aur-git software instalado em: ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/aur-git
	@rm -rf ${INFODIR}
	@rm -rf ${LICENSEDIR}
	@echo "aur-git foi removido."
