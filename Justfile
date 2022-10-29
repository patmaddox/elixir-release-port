package: clean (_port "package")

install-missing-packages: (_port "install-missing-packages")

clean: (_port "clean")
  @rm -f port/pkg-plist

_port target:
  PATH=/usr/local/lib/erlang25/bin:$PATH USE_PACKAGE_DEPENDS_ONLY=yes make ERLANG_VER=25 WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port {{target}}
