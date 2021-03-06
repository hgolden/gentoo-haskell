# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Snap: A Haskell Web Framework: project starter executable and glue code library"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="hint"

RDEPEND="=dev-haskell/aeson-0.6*[profile?]
		=dev-haskell/attoparsec-0.10*[profile?]
		=dev-haskell/cereal-0.3*[profile?]
		>=dev-haskell/clientsession-0.7.3.6[profile?]
		<dev-haskell/clientsession-0.8[profile?]
		>=dev-haskell/configurator-0.1[profile?]
		<dev-haskell/configurator-0.3[profile?]
		>=dev-haskell/data-lens-2.0.1[profile?]
		<dev-haskell/data-lens-2.11[profile?]
		=dev-haskell/data-lens-template-2.1*[profile?]
		=dev-haskell/directory-tree-0.10*[profile?]
		=dev-haskell/hashable-1.1*[profile?]
		>=dev-haskell/heist-0.7[profile?]
		<dev-haskell/heist-0.9[profile?]
		>=dev-haskell/logict-0.4.2[profile?]
		<dev-haskell/logict-0.6[profile?]
		>=dev-haskell/monadcatchio-transformers-0.2[profile?]
		<dev-haskell/monadcatchio-transformers-0.4[profile?]
		>=dev-haskell/mtl-2.0[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-haskell/mwc-random-0.8[profile?]
		<dev-haskell/mwc-random-0.13[profile?]
		=dev-haskell/pwstore-fast-2.2*[profile?]
		=dev-haskell/snap-core-0.8*[profile?]
		=dev-haskell/snap-server-0.8*[profile?]
		>=dev-haskell/stm-2.2[profile?]
		<dev-haskell/stm-2.4[profile?]
		>=dev-haskell/syb-0.1[profile?]
		<dev-haskell/syb-0.4[profile?]
		=dev-haskell/text-0.11*[profile?]
		>=dev-haskell/time-1.1[profile?]
		<dev-haskell/time-1.5[profile?]
		>=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-haskell/unordered-containers-0.1.4[profile?]
		<dev-haskell/unordered-containers-0.3[profile?]
		=dev-haskell/utf8-string-0.3*[profile?]
		>=dev-haskell/vector-0.7.1[profile?]
		<dev-haskell/vector-0.10[profile?]
		>=dev-haskell/vector-algorithms-0.4[profile?]
		<dev-haskell/vector-algorithms-0.6[profile?]
		>=dev-haskell/xmlhtml-0.1[profile?]
		<dev-haskell/xmlhtml-0.3[profile?]
		hint? ( >=dev-haskell/hint-0.3.3.1[profile?]
			<dev-haskell/hint-0.4[profile?] )
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

CABAL_CONFIGURE_FLAGS="$(cabal_flag hint)"

src_prepare() {
	sed -e 's@xmlhtml                   >= 0.1      && < 0.2@xmlhtml                   >= 0.1      \&\& < 0.3@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
