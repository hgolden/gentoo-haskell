# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit base darcs haskell-cabal

DESCRIPTION="Web related tools and services."
HOMEPAGE="http://happstack.com"
EDARCS_REPOSITORY="http://patch-tag.com/r/mae/happstack"
EDARCS_GET_CMD="get --partial"

S="${WORKDIR}/${P}/${PN}"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="=dev-haskell/base64-bytestring-0.1*[profile?]
		=dev-haskell/blaze-html-0.5*[profile?]
		>=dev-haskell/blaze-markup-0.5.1[profile?]
		>=dev-haskell/hslogger-1.0.2[profile?]
		dev-haskell/html[profile?]
		=dev-haskell/monad-control-0.3*[profile?]
		>=dev-haskell/mtl-2[profile?]
		<dev-haskell/mtl-2.2[profile?]
		>=dev-haskell/network-2.2.3[profile?]
		<dev-haskell/parsec-4[profile?]
		>=dev-haskell/sendfile-0.7.1[profile?]
		<dev-haskell/sendfile-0.8[profile?]
		dev-haskell/syb[profile?]
		>=dev-haskell/text-0.10[profile?]
		<dev-haskell/text-0.12[profile?]
		dev-haskell/time[profile?]
		>=dev-haskell/transformers-0.1.3[profile?]
		<dev-haskell/transformers-0.4[profile?]
		=dev-haskell/transformers-base-0.4*[profile?]
		>=dev-haskell/utf8-string-0.3.4[profile?]
		<dev-haskell/utf8-string-0.4[profile?]
		dev-haskell/xhtml[profile?]
		dev-haskell/zlib[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}/${PN}-7.0.1-blaze-html-0.5.patch")
