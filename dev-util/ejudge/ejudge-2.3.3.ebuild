# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libhash/libhash-1.0.2.ebuild,v 1.4 2005/06/14 22:41:56 vapier Exp $

inherit eutils

DESCRIPTION="A system for online contest management"
HOMEPAGE="http://www.ejudge.ru/"
SRC_URI="http://www.ejudge.ru/download/${P}.tgz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="mcs"

DEPEND=">=dev-libs/expat-2.0.1
		>=sys-libs/libcap-1.10-r11"

S=${WORKDIR}/${PN}

#src_unpack() {
#}

src_compile() {
	econf \
		--enable-charset=utf-8 \
		--enable-socket-path=/tmp/ejudge-userlist-socket \
		--enable-super-serve-socket=/tmp/ejudge-super-serve-socket \
		--enable-contests-home-dir=/home/judges \
		--enable-conf-dir=/home/judges/data \
		--enable-cgi-conf-dir=../cgi-data \
		--with-httpd-cgi-bin-dir=/var/www/localhost/cgi-bin \
		--with-httpd-htdocs-dir=/var/www/localhost/htdoc \
		$(use_with mcs) || die "econf failed"
	emake || die "emake failed"
}

pkg_postinst() {
	echo "creating group"
	enewgroup ejudge
	echo "group created"
	enewuser ejudge -1 -1 /home/ejudge ejudge
	echo "user created"
	mkdir -p ${D}/home/judges
	echo "dir create"
	chown ejudge:ejudge ${D}/home/judges
	echo "chown"
}

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
	rm -f ${D}/usr/bin/uudecode
	dodoc AUTHORS COPYING ChangeLog NEWS
}
