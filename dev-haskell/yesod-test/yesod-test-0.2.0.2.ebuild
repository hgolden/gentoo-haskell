# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="integration testing for WAI/Yesod Applications"
HOMEPAGE="http://www.yesodweb.com"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
# tests fail to build with hspec 1.0:
# Yesod/Test.hs:93:56:
#     Expecting one more argument to `Core.Spec'
#     In the type `[Core.Spec]'
#     In the definition of data constructor `SpecsData'
#     In the data type declaration for `SpecsData'
# Same error on hackage:
# http://hackage.haskell.org/packages/archive/yesod-test/0.2.0.2/logs/failure/ghc-7.4
KEYWORDS=""
IUSE=""

RDEPEND="=dev-haskell/attoparsec-0.10*[profile?]
		=dev-haskell/blaze-html-0.5*[profile?]
		>=dev-haskell/blaze-markup-0.5.1[profile?]
		<dev-haskell/blaze-markup-0.6[profile?]
		>=dev-haskell/case-insensitive-0.2[profile?]
		=dev-haskell/conduit-0.4*[profile?]
		>=dev-haskell/hspec-0.9[profile?]
		<dev-haskell/hspec-1.1[profile?]
		=dev-haskell/http-types-0.6*[profile?]
		=dev-haskell/hunit-1.2*[profile?]
		>=dev-haskell/hxt-9.1.6[profile?]
		>=dev-haskell/network-2.2[profile?]
		<dev-haskell/network-2.4[profile?]
		=dev-haskell/persistent-0.9*[profile?]
		=dev-haskell/resourcet-0.3*[profile?]
		=dev-haskell/tagstream-conduit-0.3*[profile?]
		dev-haskell/text[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		=dev-haskell/wai-1.2*[profile?]
		=dev-haskell/wai-test-1.2*[profile?]
		=dev-haskell/xml-conduit-0.7*[profile?]
		=dev-haskell/xml-types-0.3*[profile?]
		>=dev-haskell/xml2html-0.1.2[profile?]
		<dev-haskell/xml2html-0.2[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	sed -e 's@hspec >= 0.9 && < 0.10@hspec >= 0.9 \&\& < 1.1@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	# cp -pR "${FILESDIR}/${PN}-0.2.0.1/test" test \
	# 	|| die "Could not copy missing tests"
}
