package: clean (_port "package")

install-missing-packages: (_port "install-missing-packages")

clean: (_port "clean")
  @rm -f port/pkg-plist

_port target:
  USE_PACKAGE_DEPENDS_ONLY=yes make ERLANG_VER=25 WRKDIR=$(pwd)/work WRKSRC=$(pwd)/my_elixir_app USE_GITHUB=no DISTFILES="" -C port {{target}}
