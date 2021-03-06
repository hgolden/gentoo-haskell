# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HDBC-postgresql"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="PostgreSQL driver for HDBC"
HOMEPAGE="http://github.com/hdbc/hdbc-postgresql"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="2"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="test" # requires configured postgresql

hdbc_PV=$(get_version_component_range 1-2)

RDEPEND="dev-haskell/convertible[profile?]
		=dev-haskell/hdbc-${hdbc_PV}*
		dev-haskell/mtl[profile?]
		dev-haskell/parsec[profile?]
		dev-haskell/time[profile?]
		dev-haskell/utf8-string[profile?]
		>=dev-lang/ghc-6.8.2
		>=dev-db/postgresql-base-8"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/convertible
			dev-haskell/hunit
			dev-haskell/quickcheck
			dev-haskell/testpack
		)
		"

S="${WORKDIR}/${MY_P}"

src_configure() {
	cabal_src_configure $(cabal_flag test buildtests)
}

src_test() {
	# default tests
	haskell-cabal_src_test || die "cabal test failed"

	# built custom tests
	"${S}/dist/build/runtests/runtests" || die "unit tests failed"
}

src_install() {
	cabal_src_install

	# if tests were enabled, make sure the unit test driver is deleted
	rm -f "${ED}/usr/bin/runtests"
}
