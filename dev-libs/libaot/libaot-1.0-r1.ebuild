LICENSE="GPL2"
KEYWORDS="~amd64 ~x86"
DESCRIPTION="Library for processing of natural language texts"
SRC_URI="http://mo3r.nm.ru/libaot-1.0.tar.gz"
HOMEPAGE="http://www.aot.ru/"
SLOT="0"
DEPEND="
>=dev-util/tinyxml-2.5.3
>=dev-libs/libpcre-7.4
"
src_compile() {
	econf || die "configure failed"
	emake || die "make failed"
}

src_install() {
	emake DESTDIR=${D} install
}
