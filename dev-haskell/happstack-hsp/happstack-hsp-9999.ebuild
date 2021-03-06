# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit darcs haskell-cabal

DESCRIPTION="Support for using HSP templates in Happstack"
HOMEPAGE="http://www.happstack.com/"
EDARCS_REPOSITORY="http://patch-tag.com/r/mae/happstack"
EDARCS_GET_CMD="get --partial"

S="${WORKDIR}/${P}/${PN}"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="=dev-haskell/happstack-server-9999[profile?]
		=dev-haskell/harp-0.4*[profile?]
		<dev-haskell/hsp-0.7[profile?]
		<dev-haskell/hsx-0.10[profile?]
		<dev-haskell/mtl-2.2[profile?]
		<dev-haskell/text-0.12[profile?]
		=dev-haskell/utf8-string-0.3*[profile?]
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
