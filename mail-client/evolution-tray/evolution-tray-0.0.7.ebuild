# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

DESCRIPTION="Tray Plugin for Evolution"
HOMEPAGE="http://gnome.eu.org/evo/index.php/Evolution_Tray"
SRC_URI="http://gnome.eu.org/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="mail-client/evolution"

src_install() {
    make DESTDIR="${D}" install
}
