# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-arcade/ascii-invaders/ascii-invaders-0.1b.ebuild,v 1.22 2014/11/19 03:27:35 mr_bones_ Exp $

EAPI=5
inherit games

DESCRIPTION="Space invaders clone, using ncurses library"
HOMEPAGE="http://www.ip9.org/munro/invaders/"
SRC_URI="http://www.ip9.org/munro/invaders/invaders${PV}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ~mips ppc ppc64 sparc x86 ~x86-fbsd ~ppc-macos"
IUSE=""

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

S=${WORKDIR}/invaders

src_prepare() {
	rm -f Makefile
}

src_compile() {
	emake LDLIBS="$(pkg-config ncurses --libs)" invaders
}

src_install() {
	newgamesbin invaders ${PN}
	dodoc TODO
	prepgamesdirs
}
