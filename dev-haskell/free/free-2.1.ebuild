# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Monads for free"
HOMEPAGE="http://github.com/ekmett/free/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-1.1.1.3[profile?]
		<dev-haskell/comonad-1.2[profile?]
		=dev-haskell/comonad-transformers-2.1*[profile?]
		=dev-haskell/comonads-fd-2.1*[profile?]
		>=dev-haskell/data-lens-2.0.3[profile?]
		<dev-haskell/data-lens-2.11[profile?]
		>=dev-haskell/distributive-0.2.1[profile?]
		<dev-haskell/distributive-0.3[profile?]
		>=dev-haskell/mtl-2.0.1.0[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-haskell/semigroupoids-1.2.6.1[profile?]
		<dev-haskell/semigroupoids-1.4[profile?]
		>=dev-haskell/semigroups-0.8.2[profile?]
		<dev-haskell/semigroups-0.9[profile?]
		>=dev-haskell/transformers-0.2.0[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@data-lens            >= 2.0.3   && < 2.1@data-lens            >= 2.0.3   \&\& < 2.11@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
