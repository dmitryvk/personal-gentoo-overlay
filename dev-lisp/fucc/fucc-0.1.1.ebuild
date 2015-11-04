# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lisp/cl-fucc/cl-fucc-0.1.1.ebuild,v 1.1 2006/07/24 03:24:00 mkennedy Exp $

inherit common-lisp-2

DESCRIPTION="fucc is universal parser generator for Common Lisp."
HOMEPAGE="http://common-lisp.net/project/fucc/"
SRC_URI="http://common-lisp.net/project/fucc/files/fucc_${PV}.tar.gz"
LICENSE="MIT"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""
SLOT="0"

RDEPEND="!dev-lisp/cl-${PN}"

S=${WORKDIR}/fucc_${PV}

CLSYSTEMS="fucc-parser fucc-generator"

src_install() {
	common-lisp-install parser/* generator/* *.asd
	common-lisp-symlink-asdf fucc-parser
	common-lisp-symlink-asdf fucc-generator


	#insinto $CLSOURCEROOT/fucc; doins *.asd
	#insinto $CLSOURCEROOT/fucc/parser; doins parser/*
	#insinto $CLSOURCEROOT/fucc/generator; doins generator/*
	#dosym $CLSOURCEROOT/fucc/fucc-parser.asd $CLSYSTEMROOT
	#dosym $CLSOURCEROOT/fucc/fucc-generator.asd $CLSYSTEMROOT
	dodoc LICENSE README
	insinto /usr/share/doc/${PF}/
	doins -r doc/*
	insinto /usr/share/doc/${PF}/examples
	doins examples/*
}
