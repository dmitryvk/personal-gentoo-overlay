inherit latex-package

DESCRIPTION="Class and templates for typesetting dissertations in Russian."
HOMEPAGE="http://www.ctan.org/tex-archive/macros/latex/contrib/disser/"
SRC_URI="http://www.ctan.org/get/macros/latex/contrib/disser.zip"
LICENSE="LPPL-1.3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

S=${WORKDIR}/${PN}
DOCS="README README.ru"

src_compile() {
	latex-package_src_compile
	chmod +x makedoc
	./makedoc
}
