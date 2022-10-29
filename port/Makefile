PORTNAME= my_elixir_app
CATEGORIES= devel
DISTVERSION= 0.1.0
DISTVERSIONPREFIX= v

MAINTAINER= pat@patmaddox.com

USE_GITHUB= yes
GH_ACCOUNT= patmaddox
GH_PROJECT= elixir-release-port
WRKSRC_SUBDIR= my_elixir_app

MIX= cd ${WRKSRC} && ${MAKE_ENV} MIX_ENV=prod LC_ALL=C.UTF-8 mix

ERLANG_VER= 24
BUILD_DEPENDS= elixir:lang/elixir-devel erlang-runtime${ERLANG_VER}>0:lang/erlang-runtime${ERLANG_VER}
MAKE_ENV+= MAN_PREFIX=${PREFIX}/man PATH="${LOCALBASE}/lib/erlang${ERLANG_VER}/bin:${PATH}"

do-build:
	${MIX} local.hex --force --if-missing
	${MIX} local.rebar --force --if-missing

	${MIX} deps.get compile
	${MIX} release --path ${WRKDIR}/release

	find ${WRKDIR}/release -type f | sed -e 's:${WRKDIR}/release/:libexec/${PORTNAME}/:' > pkg-plist

do-install:
	${CP} -Rp ${WRKDIR}/release/ ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}

.include <bsd.port.mk>
