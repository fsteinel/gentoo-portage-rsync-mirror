# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emacs/folding/folding-2013.0613.1821.ebuild,v 1.4 2015/01/27 18:11:40 ulm Exp $

EAPI=5

inherit elisp

DESCRIPTION="A folding-editor-like Emacs minor mode"
HOMEPAGE="http://www.emacswiki.org/emacs/FoldingMode"
# taken from http://git.savannah.gnu.org/cgit/emacs-tiny-tools.git
SRC_URI="http://dev.gentoo.org/~ulm/distfiles/${P}.el.xz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~alpha amd64 x86"

SITEFILE="50${PN}-gentoo.el"
