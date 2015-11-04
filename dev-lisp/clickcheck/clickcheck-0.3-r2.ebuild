# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lisp/cl-mcclim/cl-mcclim-0.9.2-r1.ebuild,v 1.5 2007/10/27 10:18:05 ulm Exp $

inherit common-lisp-2

DESCRIPTION="Click-check is a test framework for Common Lisp inspired by QuickCheck."
HOMEPAGE="http://www.accesscom.com/~darius/software/clickcheck.html"
SRC_URI="http://www.accesscom.com/~darius/software/${PN}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""

CLPACKAGE="${PN}"

S=${WORKDIR}/${PN}

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${PN}-disable-flet-self-check.patch"
}

src_install() {
	common-lisp-install *.lisp
	(cd ${FILESDIR} && common-lisp-install click-check.asd)
	common-lisp-symlink-asdf click-check
	dodoc README ${FILESDIR}/documentation.text
}
