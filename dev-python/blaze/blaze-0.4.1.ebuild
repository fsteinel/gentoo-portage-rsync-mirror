# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/blaze/blaze-0.4.1.ebuild,v 1.3 2014/07/06 12:40:22 mgorny Exp $

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7,3_3} )

inherit distutils-r1

DESCRIPTION="Next generation Python numpy"
HOMEPAGE="http://blaze.pydata.org/"
SRC_URI="https://github.com/ContinuumIO/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

IUSE="examples test"

RDEPEND="
	dev-python/llvmpy[${PYTHON_USEDEP}]
	dev-python/blz[${PYTHON_USEDEP}]
	dev-python/datashape[${PYTHON_USEDEP}]
	dev-python/dynd-python[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.6[${PYTHON_USEDEP}]
	dev-python/numba[${PYTHON_USEDEP}]
	dev-python/pykit[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	>=dev-python/cython-0.18[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/flask[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		  )"

python_test() {
	cd "${BUILD_DIR}"/lib || die
	${PYTHON} -c 'import blaze; blaze.test()' || die
}

python_install_all() {
	# doc needs obsolete sphnxjp package
	#use doc && local HTML_DOCS=( docs/_build/html )
	use examples && local EXAMPLES=( samples )
	distutils-r1_python_install_all
}
