package: (_port "package")
clean: (_port "clean")

_port target:
  make ERLANG_VER=25 WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port {{target}}
