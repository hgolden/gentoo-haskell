# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Library and tool for parsing .eventlog files from GHC"
HOMEPAGE="http://hackage.haskell.org/package/ghc-events"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/binary-0.5*[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	mkdir -p dist/build \
		|| die "Could not create dist/build directory"
	cp -p GHC/RTS/EventLogFormat.h dist/build/ \
		|| die "Could not copy header file to dist/build for haddock"
	sed -e 's@mtl        >= 1.1 && < 2.1@mtl        >= 1.1 \&\& < 2.2@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
