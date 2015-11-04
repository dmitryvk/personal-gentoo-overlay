# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit common-lisp-2 eutils

EAPI="2"

DESCRIPTION="A documentation generator for Common Lisp"
HOMEPAGE=""
SRC_URI="http://prdownloads.sourceforge.net/albert/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=""

CLSYSTEMS="albert"

#S="${WORKDIR}"/${P}

src_install() {
	common-lisp-install *
	common-lisp-symlink-asdf
	dodoc doc/*
}
