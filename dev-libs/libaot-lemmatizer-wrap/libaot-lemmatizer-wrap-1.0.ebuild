LICENSE="GPL2"
KEYWORDS="~amd64 ~x86"
DESCRIPTION="Library for processing of natural language texts"
SRC_URI="http://mo3r.nm.ru/${P}.tar.gz"
HOMEPAGE="http://www.aot.ru/"
SLOT="0"
DEPEND="
>=dev-libs/libaot-1.0
"
src_compile() {
	econf || die "configure failed"
	emake || die "make failed"
}

src_install() {
	emake DESTDIR=${D} install
}
