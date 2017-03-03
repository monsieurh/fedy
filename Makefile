# Install ePIT

install-core:
	install -dm755 $(DESTDIR)/usr/bin/
	install -dm755 $(DESTDIR)/usr/share/epit/

	for f in *; do [[ $$f != "plugins" ]] && cp -pr $$f $(DESTDIR)/usr/share/epit/; done

	install -Dpm 0755 epit.exec $(DESTDIR)/usr/bin/epit

	install -Dpm 0644 epit.desktop $(DESTDIR)/usr/share/applications/org.monsieurh.epit.desktop
	install -Dpm 0644 epit.appdata.xml $(DESTDIR)/usr/share/appdata/epit.appdata.xml

	install -Dpm 0644 epit.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/epit.svg
	install -Dpm 0644 epit-symbolic.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/epit-symbolic.svg

	install -Dpm 0644 run-as-root.policy $(DESTDIR)/usr/share/polkit-1/actions/org.folkswithhats.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi


install-plugins:
	install -dm755 $(DESTDIR)/usr/share/epit/plugins

	cp -pr plugins/* $(DESTDIR)/usr/share/epit/plugins/


install: install-core install-plugins


uninstall:
	rm -rf $(DESTDIR)/usr/share/epit/

	rm -f $(DESTDIR)/usr/bin/epit

	rm -f $(DESTDIR)/usr/share/applications/org.monsieurh.epit.desktop
	rm -f $(DESTDIR)/usr/share/appdata/epit.appdata.xml

	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/epit.svg
	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/epit-symbolic.svg

	rm -f $(DESTDIR)/usr/share/polkit-1/actions/org.folkswithhats.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi
