# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Library to read and write Paradox databases"
HOMEPAGE="http://pxlib.sourceforge.net/"
SRC_URI="mirror://sourceforge/pxlib/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=">=gnome-extra/libgsf-1.14.7"

src_install() {
    emake DESTDIR="${D}" install || die "make install failed"
    dodoc AUTHORS ChangeLog NEWS README
}