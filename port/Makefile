PORTNAME= my_elixir_app
CATEGORIES= devel
DISTVERSION= 0.1.0
DISTVERSIONPREFIX= v

MAINTAINER= pat@patmaddox.com

USE_GITHUB= yes
GH_ACCOUNT= patmaddox
GH_PROJECT= elixir-release-port
WRKSRC_SUBDIR= my_elixir_app

MIX= cd ${WRKSRC}/${WRKSRC_SUBDIR} && MIX_ENV=prod LC_ALL=C.UTF-8 mix

BUILD_DEPENDS= elixir:lang/elixir-devel erl:lang/erlang-runtime25

do-build:
	${MIX} local.hex --force --if-missing
	${MIX} local.rebar --force --if-missing
	${MIX} deps.get compile

do-install:
	${MIX} release --path ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
	find ${STAGEDIR}${PREFIX} -type f | sed -e 's:${STAGEDIR}${PREFIX}/::' > pkg-plist

.include <bsd.port.mk>
