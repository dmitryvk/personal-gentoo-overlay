# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Program to convert Paradox databases"
HOMEPAGE="http://pxlib.sourceforge.net/pxview/"
#SRC_URI="mirror://sourceforge/pxlib/${P}.orig.tar.gz"
SRC_URI="http://kent.dl.sourceforge.net/sourceforge/pxlib/pxview_0.2.5.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=">=gnome-extra/libgsf-1.14.7 >=dev-db/sqlite-3.4.2 >=dev-db/pxlib-0.6.2"

src_install() {
   emake DESTDIR="${D}" install || die "emake install failed"
   dodoc AUTHORS ChangeLog COPYING NEWS README
}