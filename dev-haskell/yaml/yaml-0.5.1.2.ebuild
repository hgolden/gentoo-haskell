# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Low-level binding to the libyaml C library."
HOMEPAGE="http://github.com/snoyberg/yaml/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5
		dev-haskell/attoparsec
		dev-haskell/conduit
		dev-haskell/text
		<dev-haskell/transformers-0.3
		dev-haskell/unordered-containers
		dev-haskell/vector
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hspec
			dev-haskell/hunit
		)
		"

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
