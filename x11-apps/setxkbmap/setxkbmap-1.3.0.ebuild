# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-apps/setxkbmap/setxkbmap-1.3.0.ebuild,v 1.11 2015/02/04 17:29:52 chithanh Exp $

EAPI=4

inherit xorg-2

DESCRIPTION="Controls the keyboard layout of a running X server"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE=""
DEPEND="x11-libs/libxkbfile
	x11-libs/libX11"
RDEPEND="${RDEPEND}
	x11-misc/xkeyboard-config"
