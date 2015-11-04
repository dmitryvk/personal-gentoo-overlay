# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emulation/vagrant/vagrant-1.4.3-r2.ebuild,v 1.2 2014/04/02 16:20:56 vikraman Exp $

EAPI="5"

inherit eutils

DESCRIPTION="A tool for building and distributing virtual machines using VirtualBox"
HOMEPAGE="http://vagrantup.com/"
SRC_URI="amd64? ( https://dl.bintray.com/mitchellh/vagrant/vagrant_${PV}_x86_64.deb )"
#x86? ( https://dl.bintray.com/mitchellh/vagrant/vagrant_${PV}_i686.deb )"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 !x86"
IUSE="test"

# Missing ebuild for contest
RESTRICT="test"

RDEPEND="${RDEPEND}
	app-arch/libarchive
	net-misc/curl
	!x64-macos? ( || ( app-emulation/virtualbox app-emulation/virtualbox-bin ) )"

src_unpack() {
    mkdir -p "${S}"
    ar x "${DISTDIR}/${A}"
    (cd "${S}" && tar xf "${WORKDIR}/data.tar.gz")
}

src_install() {
    cp -R "${S}"/* "${D}"
}
