
Debian
====================
This directory contains files used to package bitmonixd/bitmonix-qt
for Debian-based Linux systems. If you compile bitmonixd/bitmonix-qt yourself, there are some useful files here.

## bitmonix: URI support ##


bitmonix-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitmonix-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitmonix-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitmonix128.png` to `/usr/share/pixmaps`

bitmonix-qt.protocol (KDE)

