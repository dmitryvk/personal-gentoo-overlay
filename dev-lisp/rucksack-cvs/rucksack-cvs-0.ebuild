# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit common-lisp-2 cvs

DESCRIPTION="Rucksack is a persistence library for Common Lisp."
HOMEPAGE="http://common-lisp.net/project/rucksack/"
SRC_URI=""
LICENSE="LGPL"
KEYWORDS="~x86 ~amd64"
IUSE=""
SLOT="0"
DEPEND=""
RDEPEND=""

CLPACKAGE="rucksack"

S=${WORKDIR}/rucksack

ECVS_SERVER="common-lisp.net:/project/rucksack/cvsroot"
ECVS_MODULE="rucksack"
ECVS_BRANCH="HEAD"
ECVS_USER="anonymous"
ECVS_PASS="anonymous"

src_install() {
	common-lisp-install *.asd *.lisp tests/{*.asd,*.lisp}
	common-lisp-symlink-asdf rucksack
	common-lisp-symlink-asdf tests/rucksack-test
	dodoc doc/*
}