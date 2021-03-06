# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin"
inherit haskell-cabal

MY_PN="LambdaShell"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Simple shell for evaluating lambda expressions"
HOMEPAGE="http://www.cs.princeton.edu/~rdockins/lambda/home/"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sys-libs/readline"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2
		dev-haskell/mtl
		dev-haskell/parsec
		>=dev-haskell/shellac-0.9
		>=dev-haskell/shellac-readline-0.9
		>=dev-lang/ghc-6.8.2"

S="${WORKDIR}/${MY_P}"
