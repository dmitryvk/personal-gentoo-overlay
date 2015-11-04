# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Binary package for florence"
HOMEPAGE="none"
SRC_URI="${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc amd64"
IUSE=""

RESTRICT="fetch"

src_install() {
  insinto /
  doins -r *
  chmod +x ${D}/usr/bin/florence
}

pkg_postinst() {
  glib-compile-schemas /usr/share/glib-2.0/schemas
}