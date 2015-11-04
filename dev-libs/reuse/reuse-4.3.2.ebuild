# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libhash/libhash-1.0.2.ebuild,v 1.4 2005/06/14 22:41:56 vapier Exp $

inherit toolchain-funcs

DESCRIPTION="A library of reusable data structures and system-independent OS API"
HOMEPAGE="http://www.ejudge.ru/reuse.shtml"
SRC_URI="http://www.ejudge.ru/download/${P}.tgz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""

S=${WORKDIR}/${PN}/source

#src_compile() {
#}

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS COPYING ChangeLog NEWS
}
