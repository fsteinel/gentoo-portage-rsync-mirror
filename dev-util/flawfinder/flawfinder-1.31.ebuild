# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/flawfinder/flawfinder-1.31.ebuild,v 1.1 2014/12/31 15:10:26 kensington Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 )
inherit eutils python-single-r1

DESCRIPTION="Examines C/C++ source code for security flaws"
HOMEPAGE="http://www.dwheeler.com/flawfinder/"
SRC_URI="http://www.dwheeler.com/${PN}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~mips ~ppc ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~sparc-solaris ~x86-solaris"
IUSE=""

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}"

src_install() {
	dobin ${PN}
	doman ${PN}.1
	dodoc announcement ChangeLog README announcement
	dodoc flawfinder.pdf
	python_fix_shebang "${ED}"usr/bin/flawfinder
}
