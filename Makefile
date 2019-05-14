all:

install:
	mkdir -p ${DESTDIR}/usr/bin
	cp gswitch ${DESTDIR}/usr/bin/gswitch
	chmod +x ${DESTDIR}/usr/bin/gswitch
	mkdir -p ${DESTDIR}/etc/X11
	cp xorg.conf.egpu ${DESTDIR}/etc/X11/xorg.conf.egpu
	mkdir -p ${DESTDIR}/etc/systemd/system
	cp gswitch.service ${DESTDIR}/etc/systemd/system/gswitch.service
	systemctl daemon-reload

uninstall:
	rm -f ${DESTDIR}/etc/systemd/system/gswitch.service
	rm -f ${DESTDIR}/etc/X11/xorg.conf.egpu
	rm -f ${DESTDIR}/usr/bin/gswitch
	systemctl daemon-reload
