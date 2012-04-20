# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Read and write Repa arrays in various formats."
HOMEPAGE="http://repa.ouroborus.net"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/binary-0.5*[profile?]
		=dev-haskell/bmp-1.2*[profile?]
		=dev-haskell/repa-3.1*[profile?]
		=dev-haskell/vector-0.9*[profile?]
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"