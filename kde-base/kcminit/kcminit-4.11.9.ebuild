# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kcminit/kcminit-4.11.9.ebuild,v 1.6 2014/08/05 18:17:12 mrueg Exp $

EAPI=5

KMNAME="kde-workspace"
inherit kde4-meta

DESCRIPTION="KCMInit - runs startups initialization for Control Modules"
KEYWORDS="amd64 ~arm ppc ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	x11-libs/libX11
"
RDEPEND="${DEPEND}"
