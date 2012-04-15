# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.16.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="OpenCLWrappers"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The OpenCL Standard for heterogenous data-parallel computing"
HOMEPAGE="https://github.com/jkarlson/OpenCLWrappers"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2
		<dev-haskell/mtl-2.2
		>=dev-lang/ghc-6.8.2
		virtual/opencl"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/openclwrappers-0.1.0.1-mtl-2.1.patch")

src_configure() {
	cabal_src_configure --flags=link
}