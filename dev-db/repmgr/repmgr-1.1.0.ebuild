# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="A set of open source tools that helps DBAs and System administrators manage a cluster of PostgreSQL databases"
SRC_URI="http://www.repmgr.org/download/${P}.tar.gz"
HOMEPAGE="http://www.repmgr.org/"
KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="GPL-3"
IUSE=""

DEPEND=">=dev-db/postgresql-server-9.0 dev-libs/libxslt sys-libs/pam dev-libs/libxml2 dev-libs/libedit"
RDEPEND="${DEPEND} net-misc/openssh net-misc/rsync"

src_prepare() {
    epatch "${FILESDIR}/repmgr-1.1.0-Makefile.patch" || die "epatch failed"
}

src_configure() {
    # Do nothing
    true;
}

src_compile() {
    elog "compiling..."
    emake USE_PGXS=1 || die "Compile failed"
}

src_install() {
    emake USE_PGXS=1 DESTDIR="${D}" install || die "Install failed"
    dodoc COPYRIGHT CREDITS HISTORY README.rst
}
